import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/features/logger/logger.dart';
import 'package:azorin_test/features/user_details/presentation/presentation.dart';

class UserDetailsView extends StatefulWidget {
  const UserDetailsView({Key? key}) : super(key: key);

  @override
  _UserDetailsViewState createState() => _UserDetailsViewState();
}

class _UserDetailsViewState extends State<UserDetailsView> {
  UserDetailsBloc get bloc => Provider.of<UserDetailsBloc>(context, listen: false);

  static const String _loadingEmployee = 'Загрузка сотрудника';
  static const String _loadingError = 'Ошибка загрузки';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _getScaffold(
          body: StreamBuilder<ScreenStatusEnum?>(
              stream: bloc.teamMemberDetailsScreenStatusStream,
              initialData: ScreenStatusEnum.init,
              builder: (context, snapshot) {
                final screenStatus = snapshot.data;

                if (screenStatus == null) {
                  return _getRefreshIndicator(child: _getErrorScreenView());
                }

                switch (screenStatus) {
                  case ScreenStatusEnum.init:
                    bloc.loadTeamMemberDetails();
                    return _getLoadingScreenView();
                  case ScreenStatusEnum.wait:

                    /// Получаем информацию о сотруднике.
                    final data = bloc.getTeamMemberDetails();
                    if (data == null) {
                      return _getRefreshIndicator(child: _getErrorScreenView());
                    }

                    return _getRefreshIndicator(child: _getWaitScreenView(executor: data));
                  case ScreenStatusEnum.loading:
                    return _getLoadingScreenView();
                  case ScreenStatusEnum.fail:
                  default:
                    return _getRefreshIndicator(child: _getErrorScreenView());
                }
              })),
    );
  }

  /// Возвращает виджет RefreshIndicator с заданными функциями обновления.
  ///
  /// [child] - дочерний виджет.
  RefreshIndicator _getRefreshIndicator({required Widget child}) {
    return RefreshIndicator(
      onRefresh: () async {
        bloc.clearTeamMemberDetails();
        bloc.loadTeamMemberDetails();
      },
      child: child,
    );
  }

  /// Возвращает Scaffold.
  ///
  /// [body] - поле body у виджета Scaffold.
  Widget _getScaffold({required Widget body}) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Информация о сотруднике'),
      ),
      body: body,
    ).willPopScope();
  }

  /// Возвращает окно загрузки.
  Widget _getLoadingScreenView() {
    return LoadingIndicator(title: _loadingEmployee);
  }

  /// Возвращает окно ошибки.
  Widget _getErrorScreenView() {
    return LayoutBuilder(
      builder: (context, constraints) => ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: Center(child: Text(_loadingError)),
          )
        ],
      ),
    );
  }

  /// Возвращает основные виджеты.
  ///
  /// [executor] - объект исполнителя/сотрудника.
  Widget _getWaitScreenView({required Executor executor}) {
    final surname = executor.employee?.surname ?? '';
    final name = executor.employee?.name ?? '';
    final patronymic = executor.employee?.patronymic ?? '';
    final status = executor.status ?? executor.employee?.status;
    final reasonForAbsence = bloc.reasonForAbsenceEnum?.getCommonEnumItemByGuid(executor.reasonForAbsence ?? '');
    final role = RoleEnum.getRoleById(executor.employee?.role ?? '');
    final image = _getImageOfTeamMember(role, status);
    final isAbsent = reasonForAbsence != null && status != true;

    /// Проверяем является ли исполнитель куратором.
    final isExecutorCurator = RoleEnum.getRoleById(executor.employee?.role ?? '') == RoleEnum.curator;

    return Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          ListView(
            shrinkWrap: false,
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              /// Шапка с именем и статусом пользователя.
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TeamMemberDetailsHeader(
                  image: image,
                  surname: surname,
                  name: name,
                  patronymic: patronymic,
                  bottom:
                      isExecutorCurator ? Container() : _getTeamMemberStatus(status: status, reason: reasonForAbsence),
                  isAbsent: isAbsent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TeamMemberDetailsBody(
                  bodyItems: _getTeamMemberDetailsBodyItems(executor: executor),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _createButtonBar(executor: executor),
          ),
        ],
      ),
    );
  }

  /// Возвращает коллекцию объектов [TeamMemberDetailsBodyItem].
  ///
  /// [executor] - объект исполнителя/сотрудника.
  List<TeamMemberDetailsBodyItem> _getTeamMemberDetailsBodyItems({required Executor executor}) {
    final firstPhone = executor.employee?.phoneFirst;
    final secondPhone = executor.employee?.phoneSecond;
    final phoneStyle = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Color.fromRGBO(50, 154, 243, 1.0),
    );

    final firstEmail = executor.employee?.email;
    final secondEmail = executor.employee?.email2;
    final emailStyle = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Color.fromRGBO(50, 154, 243, 1.0),
    );

    final speciality = executor.employee?.speciality;
    final specialtyStyle = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Color.fromRGBO(91, 91, 91, 1.0),
    );

    return <TeamMemberDetailsBodyItem>[
      /// Поле со специальностью сотрудника.
      if (speciality != null && speciality.isNotEmpty)
        TeamMemberDetailsBodyItem(
          icon: _getIcon(Icons.info),
          description: Text(
            speciality,
            style: specialtyStyle,
          ),
        ),

      /// Поле с первым номером телефона.
      if (firstPhone != null && firstPhone.isNotEmpty)
        TeamMemberDetailsBodyItem(
          icon: _getIcon(Icons.phone),
          description: Text(
            firstPhone,
            style: phoneStyle,
          ),
          onTap: () => phoneCallDialog(context, firstPhone),
        ),

      /// Поле со вторым номером телефона.
      if (secondPhone != null && secondPhone.isNotEmpty)
        TeamMemberDetailsBodyItem(
          icon: _getIcon(Icons.phone),
          description: Text(
            secondPhone,
            style: phoneStyle,
          ),
          onTap: () => phoneCallDialog(context, secondPhone),
        ),

      /// Поле с первым почтовым адресом.
      if (firstEmail != null && firstEmail.isNotEmpty)
        TeamMemberDetailsBodyItem(
          icon: _getIcon(Icons.email_outlined),
          description: Text(
            firstEmail,
            style: emailStyle,
          ),
          onTap: () => emailCallDialog(context, firstEmail),
        ),

      /// Поле со вторым почтовым адресом.
      if (secondEmail != null && secondEmail.isNotEmpty)
        TeamMemberDetailsBodyItem(
          icon: _getIcon(Icons.email_outlined),
          description: Text(
            secondEmail,
            style: emailStyle,
          ),
          onTap: () => emailCallDialog(context, secondEmail),
        ),
    ];
  }

  /// Возвращает виджет со статусом сотрудника.
  Widget _getTeamMemberStatus({bool? status, CommonEnumItem? reason}) {
    final onDuty = 'На смене';
    final offDuty = 'Не на смене';

    final style = TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      color: Color.fromRGBO(102, 102, 102, 1.0),
    );
    if (status == null) {
      return Container(
        width: 0,
        height: 0,
      );
    }

    if (status) {
      return Text(onDuty, style: style);
    }

    if (reason == null) {
      return Text(offDuty, style: style);
    }

    return Text('$offDuty / ${reason.fullName}'.trim(), style: style);
  }

  /// Возвращает изображение сотрудника.
  ///
  /// [role] - роль сотрудника;
  /// [status] - статус сотрудника.
  Image _getImageOfTeamMember(RoleEnum role, bool? status) {
    switch (role) {
      case RoleEnum.curator:
        return curatorImageAsset;
      case RoleEnum.foreman:
        return status == true ? foremanOnShiftAsset : foremanOffShiftAsset;
      default:
        if (status == null) {
          return employeeImageAsset;
        }
        return status ? workerOnShiftAsset : workerOffShiftAsset;
    }
  }

  /// Возвращает иконку.
  ///
  /// [iconData] - объект IconData.
  Icon _getIcon(IconData iconData) {
    return Icon(
      iconData,
      color: Color.fromRGBO(175, 175, 175, 1.0),
    );
  }

  /// Возвращает блок кнопок.
  ///
  /// [executor] - объект исполнителя / сотрудника.
  Widget _createButtonBar({required Executor executor}) {
    final color = Theme.of(context).backgroundColor;

    /// Получаем разрешения пользователя.
    final permissions = bloc.store?.state.userState.currentUser?.permissions?.actionsPermissions
        ?.firstWhereOrNull((p) => p.projectObjId == bloc.projectGuid);
    if (permissions == null) {
      return TeamMemberDetailsButtonBar(buttons: <TeamMemberDetailsButton>[]);
    }

    final userPermissions = permissions.userActionsPermissions;
    if (userPermissions == null) {
      return TeamMemberDetailsButtonBar(buttons: <TeamMemberDetailsButton>[]);
    }

    /// Получаем статус сотрудника.
    final status = executor.status ?? executor.employee?.status ?? false;

    /// Получаем текущего пользователя.
    final currentUser = bloc.store?.state.userState.currentUser;
    if (currentUser == null) {
      return TeamMemberDetailsButtonBar(buttons: <TeamMemberDetailsButton>[]);
    }

    /// Проверяем является ли пользователь "бригадиром".
    final isUserForeman = permissions.userRoleGuidsAtProject?.contains(RoleEnum.foreman.ids) ?? false;

    /// Проверяем является ли сотрудник исполнителем
    final isExecutor = executor.guid != null;

    /// Проверяем является ли пользователь выбранным исполнителем.
    final isUserExecutor = executor.employee?.guid == currentUser.id;

    /// Проверяем является ли исполнитель "бригадиром".
    final isExecutorForeman = RoleEnum.getRoleById(executor.employee?.role ?? '') == RoleEnum.foreman;

    /// Проверяем, что исполнитель - исполнитель с ролью бригадир (не пользователь).
    final isAnotherForeman = isUserForeman && isExecutorForeman && !isUserExecutor;

    /// Проверяем является ли исполнитель куратором.
    final isExecutorCurator = RoleEnum.getRoleById(executor.employee?.role ?? '') == RoleEnum.curator;

    final buttonWidth = MediaQuery.of(context).size.width / 3.3;

    final buttons = <TeamMemberDetailsButton>[
      /// Заступление на смену.
      if ((userPermissions.canGoToWork == true || userPermissions.canReleaseToWork == true) &&
          !status &&
          isExecutor &&
          isUserForeman &&
          !isAnotherForeman &&
          !isExecutorCurator)
        TeamMemberDetailsButton(
          text: 'Заступить на смену',
          color: color,
          onPressed: () => onTakeShift(
            executor: executor,
            currentUser: currentUser,
          ),
          buttonWidth: buttonWidth,
        ),

      /// Сдача смены
      if ((userPermissions.canGoToWork == true || userPermissions.canReleaseToWork == true) &&
          status &&
          isExecutor &&
          isUserForeman &&
          !isAnotherForeman &&
          !isExecutorCurator)
        TeamMemberDetailsButton(
          text: 'Сдать смену',
          color: color,
          onPressed: () => onHandOverShift(
            executor: executor,
            currentUser: currentUser,
          ),
          buttonWidth: buttonWidth,
        ),

      /// Указание причины отсутствия.
      if (userPermissions.canSetReasonForAbsence == true &&
          !status &&
          isExecutor &&
          isUserForeman &&
          !isAnotherForeman &&
          !isUserExecutor &&
          !isExecutorCurator)
        TeamMemberDetailsButton(
          text: 'Причина отсутствия',
          color: color,
          onPressed: () => onIndicateReasonForAbsence(
            executor: executor,
            currentUser: currentUser,
          ),
          buttonWidth: buttonWidth,
        ),
    ];

    return TeamMemberDetailsButtonBar(buttons: buttons);
  }

  /// Заступление на смену.
  ///
  /// [permissions] - права пользователя.
  Future<void> onTakeShift({required Executor executor, required CurrentUser currentUser}) async {
    /// Проверяем, что пользователь - бригадир и исполнитель.
    final isForeman = executor.employee?.guid == currentUser.id &&
        RoleEnum.getRoleById(executor.employee?.role ?? '') == RoleEnum.foreman;
    if (isForeman)
      Get.dialog(
        SimpleDialog(
          children: [
            Center(
              child: Column(
                children: [
                  Text('Определяем координаты'),
                  CircularProgressIndicator(),
                ],
              ),
            )
          ],
        ),
      );

    try {
      /// Определяем координаты.
      await bloc.getGeolocation(isForeman);
      if (isForeman) {
        if (Get.isDialogOpen ?? false) Get.back();
      }
    } catch (e) {
      ShowSnackBar.showWarningSnackBar(message: e.toString());
    }

    /// Получаем текущего пользователя из списка исполнителей.
    final currentUserFromExecutors =
        bloc.store?.state.teamState.executors.firstWhereOrNull((e) => e.employee?.guid == currentUser.id);

    /// Проверяем находится ли пользователь на смене.
    final isCurrentUserOnDuty = currentUserFromExecutors?.status ?? currentUserFromExecutors?.employee?.status ?? false;

    if (!isCurrentUserOnDuty && !isForeman) {
      deniedTakeShiftDialog(context);
      return;
    }

    if (bloc.position != null) successTakeShiftDialog(context, onPressed: bloc.takeShift);
  }

  /// Выход со смены.
  Future<void> onHandOverShift({required Executor executor, required CurrentUser currentUser}) async {
    try {
      /// Определяем координаты низкой точности.
      await bloc.getGeolocation(false);

      bloc.handOverShift();
    } catch (e) {
      logger.e(e);
    }
  }

  /// Указание причины отсутствия.
  Future<void> onIndicateReasonForAbsence({required Executor executor, required CurrentUser currentUser}) async {
    /// Проверяем, что пользователь - бригадир и исполнитель.
    final isUserForemanAndExecutor = executor.employee?.guid == currentUser.id &&
        RoleEnum.getRoleById(executor.employee?.role ?? '') == RoleEnum.foreman;

    /// Получаем текущего пользователя из списка исполнителей.
    final currentUserFromExecutors =
        bloc.store?.state.teamState.executors.firstWhereOrNull((e) => e.employee?.guid == currentUser.id);

    /// Проверяем находится ли пользователь на смене.
    final isCurrentUserOnDuty = currentUserFromExecutors?.status ?? currentUserFromExecutors?.employee?.status ?? false;

    if (isCurrentUserOnDuty || isUserForemanAndExecutor) {
      showPickerArray(
        context,
        title: 'Укажите причину отсутствия',
        list: bloc.reasonForAbsenceElements?.map((e) => e.fullName).toList() ?? [],
        onPressed: (word) async {
          try {
            await bloc.getGeolocation(false);
            if (bloc.isReasonForAbsenceWithComment(word)) {
              _dialogReasonForAbsenceComment(context, word);
            } else if (bloc.isReasonForAbsenceWithDateRange(word)) {
              _dialogReasonForAbsenceDateRange(context, word);
            } else {
              bloc.indicateReasonForAbsence(word);
            }
          } catch (e) {
            logger.e(e);
          }
        },
      );
    } else {
      deniedReasonForAbsenceDialog(context);
    }
  }

  /// Диалоговое окно с указанием комментария к причине отсутствия.
  void _dialogReasonForAbsenceComment(BuildContext context, String reasonForAbsence) {
    final _commentController = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    InputDecoration textFieldDecoration() {
      return InputDecoration(
        fillColor: Color.fromRGBO(230, 239, 246, 1.0),
        filled: true,
        enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(22, 100, 167, 1.0),
            width: 1.5,
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).errorColor,
            width: 1.5,
          ),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).errorColor,
            width: 1.5,
          ),
        ),
      );
    }

    Widget cancelButton = TextButton(
      child: Text(
        'ОТМЕНА',
        style: TextStyle(color: Theme.of(context).backgroundColor),
      ),
      onPressed: () {
        bloc.setReasonForAbsenceComment = null;
        Navigator.of(context).pop();
      },
    );

    Widget continueButton = TextButton(
      child: Text(
        'ОК',
        style: TextStyle(color: Theme.of(context).backgroundColor),
      ),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          bloc.indicateReasonForAbsence(reasonForAbsence);
          Navigator.of(context).pop();
        }
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text(
        'Напишите комментарий:',
        style: Theme.of(context).textTheme.bodyText1,
      ),
      content: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Form(
          key: _formKey,
          child: TextFormField(
            maxLines: 3,
            decoration: textFieldDecoration(),
            controller: _commentController,
            style: main17blackText,
            maxLength: 255,
            onChanged: (val) => bloc.setReasonForAbsenceComment = val,
            validator: (val) {
              if (val!.isEmpty) {
                return 'Укажите комментарий';
              } else {
                return null;
              }
            },
            textInputAction: TextInputAction.done,
            onFieldSubmitted: (v) {
              FocusScope.of(context).unfocus();
            },
          ),
        ),
      ),
      actionsOverflowButtonSpacing: 20.0,
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  /// Диалоговое окно с указанием начальной и конечной даты к причине отсутствия.
  void _dialogReasonForAbsenceDateRange(BuildContext context, String reasonForAbsence) {
    final _formKey = GlobalKey<FormState>();

    Widget cancelButton = TextButton(
      child: Text(
        'ОТМЕНА',
        style: TextStyle(color: Theme.of(context).backgroundColor),
      ),
      onPressed: () {
        bloc.setStartDate = null;
        bloc.setEndDate = null;
        Navigator.of(context).pop();
      },
    );

    Widget continueButton = TextButton(
      child: Text(
        'ОК',
        style: TextStyle(color: Theme.of(context).backgroundColor),
      ),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          bloc.indicateReasonForAbsence(reasonForAbsence);
          Navigator.of(context).pop();
        }
      },
    );

    AlertDialog alert = AlertDialog(
      title: Text(
        'Выберите диапазон дат:',
        style: Theme.of(context).textTheme.bodyText1,
      ),
      content: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DateRangeForm(
                firstDate: DateTime(2000, 1, 1),
                lastDate: DateTime.now().add(Duration(days: 90)),
                validator: (DateTimeRange? value) {
                  bloc.setStartDate = value?.start;
                  bloc.setEndDate = value?.end;
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  '* Поле необязательно для заполнения',
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
      actionsOverflowButtonSpacing: 20.0,
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
