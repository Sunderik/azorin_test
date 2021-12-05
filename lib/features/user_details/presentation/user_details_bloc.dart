import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';

import 'package:azorin_test/core/bloc/base_bloc.dart';
import 'package:azorin_test/core/core.dart';

import 'package:azorin_test/features/logger/logger.dart';

import 'package:azorin_test/features/user_details/repository/models/models.dart';

class UserDetailsBloc extends BaseBloc {
  UserDetailsBloc(this.user);

  User user;

  /// Стрим данных контроллера [_teamMemberDetailsController].
  Stream<ScreenStatusEnum?>? get teamMemberDetailsScreenStatusStream =>
      _teamMemberDetailsScreenStatusController?.stream;

  // endregion

  // region Private Fields
  /// Контроллер статуса экрана.
  StreamController<ScreenStatusEnum?>? _teamMemberDetailsScreenStatusController;

  /// Подписка на значения поля [TeamMemberDetailsState.teamMemberDetailsScreenStatus].
  StreamSubscription<ScreenStatusEnum?>? _teamMemberDetailsScreenStatusSubscription;

  /// Координаты пользователя.
  PositionItem? _position;

  /// Координаты пользователя.
  PositionItem? get position => _position;

  /// Комментарий к причине отсутствия.
  String? get reasonForAbsenceComment => _reasonForAbsenceComment;

  set setReasonForAbsenceComment(String? value) => _reasonForAbsenceComment = value;
  String? _reasonForAbsenceComment;

  /// Начальная дата выбранного периода.
  DateTime? get startDate => _startDate;

  set setStartDate(DateTime? value) => _startDate = value;
  DateTime? _startDate;

  /// Конечная дата выбранного периода.
  DateTime? get endDate => _endDate;

  set setEndDate(DateTime? value) => _endDate = value;
  DateTime? _endDate;

  // endregion

  // region Public Methods
  /// Выполняет запрос информации о сотруднике.
  void loadTeamMemberDetails() {
    final executorGuid = this.executorGuid;
    final employeeGuid = this.employeeGuid;
    final projectGuid = this.projectGuid;
    if (executorGuid == null || projectGuid == null) {
      if (employeeGuid == null) {
        logger.e('employeeGuid is null in TeamMemberDetailsBloc.init()');
        return;
      }

      _loadEmployee(employeeGuid);
    } else {
      _loadExecutor(executorGuid, projectGuid);
    }
  }

  /// Возвращает информацию об исполнителе (сотруднике).
  Executor? getTeamMemberDetails() {
    return store?.state.teamMemberDetailsState.executor;
  }

  /// Очищает информацию о сотруднике.
  void clearTeamMemberDetails() {
    actions.teamMemberDetailsActions.clearTeamMemberDetailsExecutor(null);
  }

  /// Получение геопозиции.
  Future<void> getGeolocation(bool isForeman) async {
    _position = null;
    if (isForeman) {
      /// Получаем координаты.
      await Geolocation.coordinates().then((position) {
        if (position.type == PositionTypeEnum.position) {
          _position = position;
        }
      }).catchError((onError) {
        ShowSnackBar.showWarningSnackBar(
          message: onError.toString(),
        );
      });
    } else {
      _position = PositionItem(
        type: PositionTypeEnum.position,
        coordinates: Coordinates((b) => b..timeOfChange = DateTime.now().toIso8601String()),
      );
    }
  }

  /// Запрос заступления на смену.
  void takeShift() {
    final Map<String, dynamic> bundle = {
      'callback': _takeShiftCameraCallback,
      'savingEnabled': false,
    };

    /// Выполняем переход на камеру.
    store?.actions.navigation.routeTo(
      AppRoute((builder) => builder
        ..route = Routes.camera
        ..bundle = bundle
        ..navigationType = NavigationType.push
        ..transitionType = TransitionType.fade),
    );
  }

  /// Запрос выхода со смены.
  void handOverShift() {
    /// Определяем статус сотрудника.
    final status = false;

    Coordinates? coordinates;

    /// Формируем объект координат.
    if (_position!.coordinates != null) {
      coordinates = _position!.coordinates!.rebuild((b) => b
        ..latitude = null
        ..longitude = null);
    }

    /// Получаем сотрудника.
    final employee = store?.state.teamMemberDetailsState.executor?.employee;

    /// Формируем объект запроса.
    final request = TeamMemberDetailsStatusRequest((builder) => builder
      ..guid = employee?.guid
      ..projectGuid = this.projectGuid
      ..status = status
      ..coordinates = coordinates?.toBuilder()
      ..reasonForAbsence = null
      ..image = null);
    actions.teamMemberDetailsActions.teamMemberDetailsStatusRequest(request);
    _changeInStateData(request);
  }

  /// Возвращает true, если причина отсутствия с наименованием [word] требует комментарий.
  bool isReasonForAbsenceWithComment(String word) {
    List<ReasonForAbsenceEnum> reasonsWithComments = [
      ReasonForAbsenceEnum.absence,
      ReasonForAbsenceEnum.truancy,
      ReasonForAbsenceEnum.downtime,
    ];
    return reasonsWithComments
        .map((e) => e.appId)
        .contains(reasonForAbsenceElements?.firstWhereOrNull((element) => element.fullName == word)?.appId);
  }

  /// Возвращает true, если причина отсутствия с наименованием [word] требует начальной и конечной даты.
  bool isReasonForAbsenceWithDateRange(String word) {
    List<ReasonForAbsenceEnum> reasonsWithDateRange = [
      ReasonForAbsenceEnum.administrativeLeave,
      ReasonForAbsenceEnum.sick,
      ReasonForAbsenceEnum.onTheWay,
      ReasonForAbsenceEnum.officialVacation,
      ReasonForAbsenceEnum.secondment,
    ];
    return reasonsWithDateRange
        .map((e) => e.appId)
        .contains(reasonForAbsenceElements?.firstWhereOrNull((element) => element.fullName == word)?.appId);
  }

  /// Запрос задания причины отсутствия.
  ///
  /// [word] - наименование причины отсутствия.
  void indicateReasonForAbsence(String word) {
    // Определяем статус сотрудника.
    final bool status = false;

    // Получаем идентификатор причины отсутствия.
    final String? reasonGuid = reasonForAbsenceElements?.firstWhereOrNull((element) => element.fullName == word)?.guid;

    Coordinates? coordinates;

    // Формируем объект координат.
    if (_position?.coordinates != null) {
      coordinates = _position?.coordinates;
    }

    // Получаем сотрудника.
    final employee = store?.state.teamMemberDetailsState.executor?.employee;

    // Формируем запрос.
    final request = TeamMemberDetailsStatusRequest((builder) => builder
      ..guid = employee?.guid
      ..projectGuid = this.projectGuid
      ..status = status
      ..coordinates = coordinates?.toBuilder()
      ..reasonForAbsence = reasonGuid
      ..reasonForAbsenceComment = reasonForAbsenceComment
      ..startDate = startDate
      ..endDate = endDate
      ..image = null);

    actions.teamMemberDetailsActions.teamMemberDetailsStatusRequest(request);
    _changeInStateData(request);
  }

  // endregion

  // region Private Methods
  /// Выполняет запрос информации об исполнителе.
  void _loadExecutor(String executorGuid, String projectGuid) {
    /// Получаем режим работы.
    final isOfflineMode = store?.state.isOfflineMode ?? true;
    if (isOfflineMode == true) {
      /// Получаем данные оффлайн стейта.
      final data = store?.state.dataOfflineState.data;

      if (data == null) {
        actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.fail);
        ShowSnackBar.showInfoSnackBar(message: 'Оффлайн данные отсутсвуют');
      } else {
        /// Получаем исполнителя.
        final executor =
            store?.state.dataOfflineState.data?.project?.executors?.firstWhereOrNull((e) => e.guid == executorGuid);

        if (executor == null) {
          logger.e('executor is null in _loadExecutor');
          return;
        }

        actions.teamMemberDetailsActions.setTeamExecutorInfo(executor);
        actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.wait);
      }
    } else {
      /// Получаем исполнителя.
      final executor = store?.state.teamState.executors.firstWhereOrNull((e) => e.guid == executorGuid);

      /// Проверяем отсутствуют какие-либо поля.
      final areFieldsOfExecutorEmpty = _areFieldsOfExecutorEmpty(executor ?? Executor());
      if (executor == null || areFieldsOfExecutorEmpty) {
        /// Генерируем запрос.
        final request = TeamExecutorInfoRequest((builder) => builder
          ..executorGuid = executorGuid
          ..projectGuid = projectGuid);

        actions.teamMemberDetailsActions.teamExecutorInfoRequest(request);
        actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.loading);
      } else {
        actions.teamMemberDetailsActions.setTeamExecutorInfo(executor);
        actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.wait);
      }
    }
  }

  /// Выполняет запрос информации о сотруднике.
  void _loadEmployee(String employeeGuid) {
    final request = TeamMemberInfoRequest((builder) => builder..guid = employeeGuid);
    actions.teamMemberDetailsActions.teamMemberDetailsRequest(request);
    actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.loading);
  }

  /// Проверяет отсутствуют ли требуемые поля в объекте [executor].
  bool _areFieldsOfExecutorEmpty(Executor executor) {
    return executor.guid == null ||
        executor.employee?.guid == null ||
        executor.employee?.name == null ||
        executor.employee?.fullName == null ||
        executor.employee?.shortName == null ||
        executor.employee?.name == null ||
        executor.employee?.surname == null ||
        executor.employee?.patronymic == null ||
        executor.employee?.status == null ||
        executor.employee?.role == null;
  }

  /// Доступ к фото осуществляется с помощью вызова callback'а,
  /// где параматр [path] определяет путь к изображению,
  /// сделанных на камеру.
  ///
  /// Запрос изменения статуса (выход на смену).
  void _takeShiftCameraCallback(String path) async {
    final int imageQuality = 70;
    final double maxWidth = 768.0;
    final double maxHeight = 1366.0;

    /// Получаем сжатое изображение.
    final Uint8List? image = await FlutterImageCompress.compressWithFile(path,
        quality: imageQuality, minHeight: maxHeight.toInt(), minWidth: maxWidth.toInt());

    /// Получаем сотрудника.
    var _employee = store?.state.teamMemberDetailsState.executor?.employee;

    Coordinates? coordinates;

    // /// Формируем объект координат.
    // if (_position!.position != null) {
    //   coordinates = Coordinates((builder) => builder..timeOfChange = _position!.position!.timestamp!.toIso8601String());
    // }
    try {
      if (image != null && _employee != null) {
        if (_position!.coordinates != null) {
          if (_employee.role == RoleEnum.foreman.ids && _employee.guid == store?.state.userState.currentUser?.id) {
            /// Определяем координаты.
            coordinates = _position!.coordinates;
          } else {
            coordinates = _position!.coordinates;
          }
        }

        /// Определяем статус сотрудника.
        final status = true;

        /// Формируем объект запроса.
        final request = TeamMemberDetailsStatusRequest((builder) => builder
          ..guid = _employee?.guid
          ..projectGuid = this.projectGuid
          ..status = status
          ..coordinates = coordinates?.toBuilder()
          ..reasonForAbsence = null
          ..image = base64Encode(image));

        actions.teamMemberDetailsActions.teamMemberDetailsStatusRequest(request);
        _changeInStateData(request);
      }
    } finally {
      _employee = null;
      final cacheDir = await PathProvider.getTempDir;
      if (cacheDir!.existsSync()) {
        cacheDir.deleteSync(recursive: true);
      }
    }
  }

  ///Изменить данные в оффлайн стейте и стейте команды
  void _changeInStateData(TeamMemberDetailsStatusRequest request) {
    if (store!.state.isOfflineMode) {
      List<Executor>? executors = store?.state.teamState.executors.map((executor) {
        if (request.guid == executor.employee?.guid) {
          return Executor((builder) => builder
            ..guid = executor.guid
            ..employee = Employee((builder) => builder
              ..guid = executor.employee?.guid
              ..fullName = executor.employee?.fullName
              ..shortName = executor.employee?.shortName
              ..name = executor.employee?.name
              ..surname = executor.employee?.surname
              ..patronymic = executor.employee?.patronymic
              ..status = request.status
              ..description = executor.employee?.description
              ..email = executor.employee?.email
              ..phoneFirst = executor.employee?.phoneFirst
              ..phoneSecond = executor.employee?.phoneSecond
              ..unity = executor.employee?.unity
              ..unityName = executor.employee?.unityName
              ..speciality = executor.employee?.speciality
              ..role = executor.employee?.role).toBuilder()
            ..reasonForAbsence = request.reasonForAbsence);
        } else {
          return Executor((builder) => builder
            ..guid = executor.guid
            ..employee = Employee((builder) => builder
              ..guid = executor.employee?.guid
              ..fullName = executor.employee?.fullName
              ..shortName = executor.employee?.shortName
              ..name = executor.employee?.name
              ..surname = executor.employee?.surname
              ..patronymic = executor.employee?.patronymic
              ..status = executor.employee?.status
              ..description = executor.employee?.description
              ..email = executor.employee?.email
              ..phoneFirst = executor.employee?.phoneFirst
              ..phoneSecond = executor.employee?.phoneSecond
              ..unity = executor.employee?.unity
              ..unityName = executor.employee?.unityName
              ..speciality = executor.employee?.speciality
              ..role = executor.employee?.role).toBuilder()
            ..reasonForAbsence = executor.reasonForAbsence);
        }
      }).toList();

      if (executors == null) {
        logger.e('executors is null in _changeInStateData');
        return;
      }

      store?.actions.team.setTeamMembers(executors.toBuiltList());
      store?.actions.dataOfflineActions.updateExecutorStatus(executors.build());

      final executorGuid = this.executorGuid;
      final projectGuid = this.projectGuid;

      if (executorGuid != null && projectGuid != null) {
        _loadExecutor(executorGuid, projectGuid);
      } else {
        logger.e('executorGuid == null || projectGuid == null in _changeInStateData');
      }
    }
  }

  // endregion

  @override
  void init() {
    super.init();

    // Получение перечисления причин отсутствия
    _reasonForAbsenceEnum = CollectionEnums.getCommonEnumByGuid(CollectionEnums.reasonForAbsence.guid);

    actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.init);

    _teamMemberDetailsScreenStatusSubscription = store
        ?.nextSubstate((AppState state) => state.teamMemberDetailsState.teamMemberDetailsScreenStatus)
        .listen((ScreenStatusEnum? screenStatus) {
      if (screenStatus != null) {
        _teamMemberDetailsScreenStatusController?.sink.add(screenStatus);
      }
    });

    _teamMemberDetailsScreenStatusController = StreamController<ScreenStatusEnum>.broadcast();
  }

  @override
  void dispose() {
    _teamMemberDetailsScreenStatusController?.close();

    _teamMemberDetailsScreenStatusSubscription?.cancel();
    super.dispose();
  }
}
