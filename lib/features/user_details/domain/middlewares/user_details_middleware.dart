import 'package:built_collection/built_collection.dart';
import 'package:built_redux/built_redux.dart';
import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/core/domain/objects/enums/local_enums/screen_status_enum.dart';
import 'package:azorin_test/features/user_details/domain/domain.dart';
import 'package:azorin_test/features/user_details/repository/models/models.dart';
import 'package:collection/collection.dart';

MiddlewareBuilder<AppState, AppStateBuilder, AppActions> teamMemberDetailsMiddleware() {
  return MiddlewareBuilder<AppState, AppStateBuilder, AppActions>()
    ..add(TeamMemberDetailsActionsNames.teamExecutorInfoRequest, _teamExecutorInfoRequest)
    ..add(TeamMemberDetailsActionsNames.setTeamExecutorInfoResponse, _setTeamExecutorInfoResponse)
    ..add(TeamMemberDetailsActionsNames.teamMemberDetailsStatusRequest, _teamMemberDetailsStatusRequest)
    ..add(TeamMemberDetailsActionsNames.setTeamMemberDetailsStatusResponse, _setTeamMemberDetailsStatusResponse)
    ..add(TeamMemberDetailsActionsNames.teamMemberDetailsRequest, _teamMemberDetailsRequest)
    ..add(TeamMemberDetailsActionsNames.setTeamMemberDetailsResponse, _setTeamMemberDetailsResponse)
    ..add(TeamMemberDetailsActionsNames.teamMemberDesignEngineerDetailsRequest, _teamMemberDesignEngineerDetailsRequest)
    ..add(TeamMemberDetailsActionsNames.setTeamMemberDesignEngineerDetailsResponse,
        _setTeamMemberDesignEngineerDetailsResponse);
}

/// Запрос на получение информации об исполнителе.
void _teamExecutorInfoRequest(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, ActionHandler next,
    Action<TeamExecutorInfoRequest> action) async {
  next(action);
  api.actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.loading);
}

/// Ответ на запрос получения информации об исполнителе.
void _setTeamExecutorInfoResponse(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, ActionHandler next,
    Action<TeamExecutorInfoResponse> action) async {
  next(action);

  final teamExecutorInfoResponse = action.payload;

  switch (teamExecutorInfoResponse.httpCode) {
    case 200:
      final data = teamExecutorInfoResponse.executor;

      // Получаем исполнителя.
      final executor = Executor((builder) => builder
        ..guid = data?.guid
        ..reasonForAbsence = data?.reasonForAbsence
        ..employee.replace(Employee((b) => b
          ..guid = data?.employee?.guid
          ..fullName = data?.employee?.fullName
          ..shortName = data?.employee?.shortName
          ..name = data?.employee?.name
          ..surname = data?.employee?.surname
          ..patronymic = data?.employee?.patronymic
          ..status = data?.employee?.status
          ..description = data?.employee?.description
          ..email = data?.employee?.email
          ..email2 = data?.employee?.email2
          ..phoneFirst = data?.employee?.phoneFirst
          ..phoneSecond = data?.employee?.phoneSecond
          ..unity = data?.employee?.unity
          ..unityName = data?.employee?.unityName
          ..speciality = data?.employee?.speciality
          ..role = data?.employee?.role
          ..workPlace = data?.employee?.workPlace
          ..branch = data?.employee?.branch
          ..department = data?.employee?.department)));

      // Определяем исполнителя в стейте.
      api.actions.teamMemberDetailsActions.setTeamExecutorInfo(executor);

      // Меняем статус экрана.
      api.actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.wait);
      break;
    default:
      if (!api.state.isOfflineMode)
        api.actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.fail);
  }
}

/// Запрос на изменение статуса пользователя.
void _teamMemberDetailsStatusRequest(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, ActionHandler next,
    Action<TeamMemberDetailsStatusRequest> action) async {
  next(action);
  api.actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.loading);
}

/// Ответ на запрос изменения статуса пользователя.
void _setTeamMemberDetailsStatusResponse(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, ActionHandler next,
    Action<TeamMemberDetailsStatusResponse> action) async {
  next(action);

  final TeamMemberDetailsStatusResponse teamExecutorInfoStatusResponse = action.payload;

  switch (teamExecutorInfoStatusResponse.httpCode) {
    case 200:
      final List<Executor>? executorsFromState = api.state.teamState.executors.toList();
      Executor? executorToChange;

      if (executorsFromState != null && executorsFromState.isNotEmpty) {
        List<Executor> executors = executorsFromState.map((executor) {
          if (teamExecutorInfoStatusResponse.guid == executor.employee!.guid) {
            return Executor((builder) => builder
              ..guid = executor.guid
              ..employee = Employee((builder) => builder
                ..guid = executor.employee?.guid
                ..fullName = executor.employee?.fullName
                ..shortName = executor.employee?.shortName
                ..name = executor.employee?.name
                ..surname = executor.employee?.surname
                ..patronymic = executor.employee?.patronymic
                ..status = teamExecutorInfoStatusResponse.status ?? executor.employee?.status
                ..description = executor.employee?.description
                ..email = executor.employee?.email
                ..email2 = executor.employee?.email2
                ..phoneFirst = executor.employee?.phoneFirst
                ..phoneSecond = executor.employee?.phoneSecond
                ..unity = executor.employee?.unity
                ..unityName = executor.employee?.unityName
                ..speciality = executor.employee?.speciality
                ..role = executor.employee?.role
                ..branch = executor.employee?.branch
                ..department = executor.employee?.department).toBuilder()
              ..reasonForAbsence = teamExecutorInfoStatusResponse.status == true
                  ? null
                  : teamExecutorInfoStatusResponse.reasonForAbsence);
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
                ..email2 = executor.employee?.email2
                ..phoneFirst = executor.employee?.phoneFirst
                ..phoneSecond = executor.employee?.phoneSecond
                ..unity = executor.employee?.unity
                ..unityName = executor.employee?.unityName
                ..speciality = executor.employee?.speciality
                ..role = executor.employee?.role
                ..workPlace = executor.employee?.workPlace ?? teamExecutorInfoStatusResponse.workplace
                ..branch = executor.employee?.branch
                ..department = executor.employee?.department).toBuilder()
              ..reasonForAbsence = executor.reasonForAbsence);
          }
        }).toList();
        api.actions.team.setTeamMembers(executors.toBuiltList());
        executorToChange =
            executors.firstWhereOrNull((executor) => teamExecutorInfoStatusResponse.guid == executor.employee?.guid);
      } else {
        executorToChange = api.state.teamMemberDetailsState.executor;
      }
      final Executor executor = Executor((b) => b
        ..guid = executorToChange?.guid
        ..employee = Employee((builder) => builder
          ..guid = executorToChange?.employee?.guid
          ..fullName = executorToChange?.employee?.fullName
          ..shortName = executorToChange?.employee?.shortName
          ..name = executorToChange?.employee?.name
          ..surname = executorToChange?.employee?.surname
          ..patronymic = executorToChange?.employee?.patronymic
          ..status = teamExecutorInfoStatusResponse.status ?? executorToChange?.employee?.status
          ..description = executorToChange?.employee?.description
          ..email = executorToChange?.employee?.email
          ..email2 = executorToChange?.employee?.email2
          ..phoneFirst = executorToChange?.employee?.phoneFirst
          ..phoneSecond = executorToChange?.employee?.phoneSecond
          ..unity = executorToChange?.employee?.unity
          ..unityName = executorToChange?.employee?.unityName
          ..speciality = executorToChange?.employee?.speciality
          ..role = executorToChange?.employee?.role
          ..workPlace = teamExecutorInfoStatusResponse.request?.workplace
          ..branch = executorToChange?.employee?.branch
          ..department = executorToChange?.employee?.department).toBuilder()
        ..reasonForAbsence =
            teamExecutorInfoStatusResponse.status == true ? null : teamExecutorInfoStatusResponse.reasonForAbsence);

      // Определяем исполнителя в стейте.
      api.actions.teamMemberDetailsActions.setTeamExecutorInfo(executor);

      // Меняем статус экрана.
      api.actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.wait);

      // Обновляем сотрудника в загрузке подразделения.
      updateEmployeeInWorkload(api, executor);
      break;
    default:
      if (!api.state.isOfflineMode)
        api.actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.fail);
  }
}

/// Запрос на получение информации о сотруднике.
void _teamMemberDetailsRequest(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, ActionHandler next,
    Action<TeamMemberInfoRequest> action) async {
  next(action);
  api.actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.loading);
}

/// Ответ на запрос получения информации о сотруднике.
void _setTeamMemberDetailsResponse(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, ActionHandler next,
    Action<TeamExecutorInfoResponse> action) async {
  next(action);

  final TeamExecutorInfoResponse teamExecutorInfoResponse = action.payload;

  switch (teamExecutorInfoResponse.httpCode) {
    case 200:
      final Executor? data = teamExecutorInfoResponse.executor;
      final Executor executor = Executor((builder) => builder
        ..guid = data?.guid
        ..reasonForAbsence = data?.reasonForAbsence
        ..employee.replace(Employee((b) => b
          ..guid = data?.employee?.guid
          ..fullName = data?.employee?.fullName
          ..shortName = data?.employee?.shortName
          ..name = data?.employee?.name
          ..surname = data?.employee?.surname
          ..patronymic = data?.employee?.patronymic
          ..status = null
          ..description = data?.employee?.description
          ..email = data?.employee?.email
          ..email2 = data?.employee?.email2
          ..phoneFirst = data?.employee?.phoneFirst
          ..phoneSecond = data?.employee?.phoneSecond
          ..unity = null
          ..unityName = null
          ..speciality = data?.employee?.speciality
          ..role = null
          ..workPlace = data?.employee?.workPlace
          ..branch = data?.employee?.branch
          ..department = data?.employee?.department)));

      // Определяем исполнителя в стейте.
      api.actions.teamMemberDetailsActions.setTeamExecutorInfo(executor);

      // Меняем статус экрана.
      api.actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.wait);
      break;
    default:
      if (!api.state.isOfflineMode)
        api.actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.fail);
  }
}

/// Запрос на получение информации о пользователе отдела проектирования и наладки.
void _teamMemberDesignEngineerDetailsRequest(MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
    ActionHandler next, Action<TeamMemberDesignEngineerDetailsRequest> action) {
  next(action);
  api.actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.loading);
}

/// Ответ на запрос получения информации о пользователе отдела проектирования и наладки.
void _setTeamMemberDesignEngineerDetailsResponse(MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
    ActionHandler next, Action<TeamMemberDesignEngineerDetailsResponse> action) {
  next(action);

  final TeamMemberDesignEngineerDetailsResponse response = action.payload;

  switch (response.httpCode) {
    case 200:
      final executor = Executor((builder) => builder
        ..guid = null
        ..reasonForAbsence = response.reasonForAbsence
        ..employee.replace(Employee((b) => b
          ..guid = response.guid
          ..fullName = response.fullName
          ..shortName = response.shortName
          ..name = response.name
          ..surname = response.surname
          ..patronymic = response.patronymic
          ..status = response.status
          ..description = response.description
          ..email = response.email
          ..email2 = response.email2
          ..phoneFirst = response.phoneFirst
          ..phoneSecond = response.phoneSecond
          ..unity = response.unity
          ..unityName = response.unityName
          ..speciality = response.speciality
          ..role = response.role
          ..workPlace = response.workPlace
          ..branch = response.branch
          ..department = response.department)));

      // Определяем исполнителя в стейте.
      api.actions.teamMemberDetailsActions.setTeamExecutorInfo(executor);

      // Меняем статус экрана.
      api.actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.wait);
      break;
    default:
      if (!api.state.isOfflineMode)
        api.actions.teamMemberDetailsActions.setTeamMemberDetailsScreenStatus(ScreenStatusEnum.fail);
  }
}

/// Обновление сотрудника в загрузке подразделений.
void updateEmployeeInWorkload(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, Executor executor) {
  // Получаем список филиалов.
  final branches = api.state.workloadState.workloadBranches;
  if (branches == null) {
    return;
  }

  MapEntry<SimpleType, BranchWorkload>? updatedBranchMapEntry;

  branches.forEach((key, branch) {
    // Получаем коллекцию отделов филиала.
    final divisions = branch.divisions;

    if (divisions == null) {
      return;
    }

    // Получаем отдел филиала с сотрудником.
    final division = divisions.firstWhereOrNull(
        (division) => division.employees?.any((employee) => employee.guid == executor.employee?.guid) == true);
    if (division == null) {
      return;
    }

    // Получаем коллекцию сотрудников.
    final employees = division.employees;
    if (employees == null) {
      return;
    }

    // Получаем сотрудника.
    final employee = employees.firstWhereOrNull((element) => element.guid == executor.employee?.guid);
    if (employee == null) {
      return;
    }

    // Обновляем сотрудника.
    final updatedEmployee = employee.rebuild((b) => b
      ..workplace = executor.employee?.workPlace
      ..reasonForAbsence = executor.reasonForAbsence);

    // Обновляем коллекцию сотрудников.
    final updatedEmployees = employees.map((employee) {
      if (employee.guid == updatedEmployee.guid) {
        return updatedEmployee;
      }
      return employee;
    }).toList();

    // Обновляем отдел филиала.
    final updatedDivision = division.rebuild((b) => b..employees = ListBuilder(updatedEmployees));

    // Обновляем коолекцию отделов филиала.
    final updatedDivisions = divisions.map((division) {
      if (division.guid == updatedDivision.guid) {
        return updatedDivision;
      }
      return division;
    }).toList();

    // Обновляем филиал.
    updatedBranchMapEntry = MapEntry(key, branch.rebuild((b) => b..divisions = ListBuilder(updatedDivisions)));
  });

  final updatedBranches = branches.map((key, value) {
    final updatedBranchMapEntryKey = updatedBranchMapEntry?.key;
    final updatedBranchMapEntryValue = updatedBranchMapEntry?.value;

    if (key == updatedBranchMapEntryKey) {
      return MapEntry(key, updatedBranchMapEntryValue);
    }
    return MapEntry(key, value);
  });

  // Сбрасываем существующие филиалы.
  api.actions.workloadActions.clearBranches(null);

  // Определяем новые филиалы.
  api.actions.workloadActions.setBranches(MapBuilder<SimpleType, BranchWorkload>(updatedBranches).build());
}
