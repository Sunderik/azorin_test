import 'package:built_collection/built_collection.dart';
import 'package:tecon_task/core/core.dart';

/// Объект распределения ролей пользователя.
class RolePermissionDistributor {
  final List<UserRole> _roles;

  RolePermissionDistributor(this._roles) {
    // Выполняем сортировку ролей по приоритету (от низшего к высшему)
    // для корректной перезаписи прав доступа
    _roles.sort((firstRole, secondRole) {
      // Получаем приоритет первой роли
      final firstRolePriority = RoleEnum.getRoleById(firstRole.roleGuid ?? '').priority;

      // Получаем приоритет второй роли
      final secondRolePriority = RoleEnum.getRoleById(secondRole.roleGuid ?? '').priority;

      return firstRolePriority > secondRolePriority ? -1 : 1;
    });
  }

  // region Public Methods
  /// Получение прав на доступ к окнам приложения для текущей роли.
  AccessPermissions getAccessPermissions() {
    final roles = _roles;

    AccessPermissions accessPermissions = AccessPermissions();
    if (roles.isNotEmpty) {
      roles.forEach((element) {
        final RoleEnum role = RoleEnum.getRoleById(element.roleGuid ?? '');
        accessPermissions = _getAccessPermissions(accessPermissions, role);
      });
    }
    return accessPermissions;
  }

  /// Получение коллекции actionPermissions для всех проектов пользователя.
  List<ActionPermissions> getActionPermissionsList() {
    final roles = _roles;
    List<ActionPermissions> actionPermissionsList = [];
    if (roles.isNotEmpty) {
      final uniqueProjects = roles.map((e) => e.project?.guid).toSet();
      uniqueProjects.forEach((element) {
        if (element != null) {
          final actionPermissions = getActionPermissionsForProject(element).rebuild((b) => b..projectObjId = element);
          actionPermissionsList.add(actionPermissions);
        }
      });
    }
    return actionPermissionsList;
  }

  /// Получение доступных действий в приложении для текущей роли
  /// на проекте с идентификатором [projectGuid].
  ActionPermissions getActionPermissionsForProject(final String projectGuid) {
    final roles = _roles;
    ActionPermissions actionPermissions = ActionPermissions();
    if (roles.isNotEmpty) {
      final rolesAtProject = roles.where((element) => element.project?.guid == projectGuid).toList();
      rolesAtProject.forEach((element) {
        final RoleEnum role = RoleEnum.getRoleById(element.roleGuid ?? '');

        final List<String> _userRoleGuidsAtProject = actionPermissions.userRoleGuidsAtProject?.toList() ?? [];
        _userRoleGuidsAtProject.add(role.ids);

        actionPermissions = actionPermissions.rebuild((builder) => builder
          ..userRoleGuidsAtProject = _userRoleGuidsAtProject.toBuiltList().toBuilder()
          ..userRoleId = role.ids
          ..projectObjId = projectGuid);
        actionPermissions = _getActionPermissionsForProject(actionPermissions, role);
      });
    }
    return actionPermissions;
  }

  // endregion

  // region Private Methods
  /// Получение прав на доступ к окнам приложения.
  ///
  /// [accessPermissions] - выделенные права;
  ///
  /// [role] - роль, для которой выделяются прав;
  AccessPermissions _getAccessPermissions(final AccessPermissions accessPermissions, final RoleEnum role) {
    switch (role) {
      case RoleEnum.ceo:
        {
          return _getAccessPermissionsForCeo(accessPermissions);
        }
      case RoleEnum.guest:
        {
          return _getAccessPermissionsForGuest(accessPermissions);
        }
      case RoleEnum.dispatcher:
        {
          return _getAccessPermissionsForDispatcher(accessPermissions);
        }
      case RoleEnum.observer:
        {
          return _getAccessPermissionsForObserver(accessPermissions);
        }
      case RoleEnum.curator:
        {
          return _getAccessPermissionsForCurator(accessPermissions);
        }
      case RoleEnum.foreman:
        {
          return _getAccessPermissionsForForeman(accessPermissions);
        }
      case RoleEnum.headOfDesignDepartment:
        {
          return _getAccessPermissionsForHeadOfDesignDepartment(accessPermissions);
        }
      case RoleEnum.headOfServiceDepartment:
        {
          return _getAccessPermissionsForHeadOfServiceDepartment(accessPermissions);
        }
      case RoleEnum.designEngineer:
        {
          return _getAccessPermissionsForDesignEngineer(accessPermissions);
        }
      case RoleEnum.serviceman:
        {
          return _getAccessPermissionsForServiceman(accessPermissions);
        }
      case RoleEnum.expertLogistician:
      case RoleEnum.expertUZTM:
      case RoleEnum.expertProject:
      case RoleEnum.expertCustomer:
      case RoleEnum.expertPCModule:
      case RoleEnum.expertInstallation:
      case RoleEnum.expertProduction:
      case RoleEnum.expertSoftware:
        {
          return _getAccessPermissionsForExpert(accessPermissions);
        }
      default:
        return AccessPermissions();
    }
  }

  /// ToDo: настроить разрешение
  /// Получение прав на доступ к окнам приложения для роли "Директор" ([RoleEnum.ceo]).
  ///
  /// [accessPermissions] - выделенные права;
  AccessPermissions _getAccessPermissionsForCeo(final AccessPermissions accessPermissions) {
    return accessPermissions.rebuild((builder) => builder
      ..statisticPage = true
      ..teamTapePage = true
      ..taskTapePage = true);
  }

  /// Получение прав на доступ к окнам приложения для роли "Гость" ([RoleEnum.guest]).
  ///
  /// [accessPermissions] - выделенные права;
  AccessPermissions _getAccessPermissionsForGuest(final AccessPermissions accessPermissions) {
    return accessPermissions.rebuild((builder) => builder);
  }

  /// Получение прав на доступ к окнам приложения для роли "Диспетчер" ([RoleEnum.dispatcher]).
  ///
  /// [accessPermissions] - выделенные права;
  AccessPermissions _getAccessPermissionsForDispatcher(final AccessPermissions accessPermissions) {
    return accessPermissions.rebuild((builder) => builder
      ..statisticPage = true
      ..teamTapePage = true
      ..taskTapePage = true
      ..inWorkTasksAtTasksPage = true
      ..newTasksAtTasksPage = true
      ..closedTasksAtTasksPage = true
      ..calendarAtTasksPage = true
      ..searchAtTasksPage = true
      ..chatList = true
      ..reports = true);
  }

  /// Получение прав на доступ к окнам приложения для роли "Наблюдатель" ([RoleEnum.observer]).
  ///
  /// [accessPermissions] - выделенные права;
  AccessPermissions _getAccessPermissionsForObserver(final AccessPermissions accessPermissions) {
    return accessPermissions.rebuild((builder) => builder
      ..statisticPage = true
      ..teamTapePage = true
      ..taskTapePage = true
      ..inWorkTasksAtTasksPage = true
      ..problemsPage = false);
  }

  /// Получение прав на доступ к окнам приложения для роли "Куратор" ([RoleEnum.curator]).
  ///
  /// [accessPermissions] - выделенные права;
  AccessPermissions _getAccessPermissionsForCurator(final AccessPermissions accessPermissions) {
    return accessPermissions.rebuild((builder) => builder
      ..mainMenuPage = true
      ..tasksPage = true
      ..inWorkTasksAtTasksPage = true
      ..newTasksAtTasksPage = true
      ..closedTasksAtTasksPage = true
      ..calendarAtTasksPage = true
      ..searchAtTasksPage = true
      ..problemsPage = true
      ..teamPage = true
      ..projectsPage = true
      ..teamTapePage = true
      ..taskTapePage = true
      ..reports = true
      ..chatList = true);
  }

  /// Получение прав на доступ к окнам приложения для роли "Бригадир" ([RoleEnum.foreman]).
  ///
  /// [accessPermissions] - выделенные права;
  AccessPermissions _getAccessPermissionsForForeman(final AccessPermissions accessPermissions) {
    return accessPermissions.rebuild((builder) => builder
      ..mainMenuPage = true
      ..teamPage = true
      ..problemsPage = true
      ..tasksPage = true
      ..inWorkTasksAtTasksPage = true
      ..newTasksAtTasksPage = true
      ..closedTasksAtTasksPage = true
      ..calendarAtTasksPage = true
      ..searchAtTasksPage = true
      ..projectsPage = true
      ..reports = true
      ..chatList = true);
  }

  /// ToDo: настроить разрешение
  /// Получение прав на доступ к окнам приложения для роли "Начальник отдела проектирования" ([RoleEnum.headOfDesignDepartment]).
  ///
  /// [accessPermissions] - выделенные права;
  AccessPermissions _getAccessPermissionsForHeadOfDesignDepartment(final AccessPermissions accessPermissions) {
    return accessPermissions.rebuild((builder) => builder
      ..memberDetails = true
      ..tasksPage = true
      ..searchAtTasksPage = true
      ..myTasksAtTasksPage = true
      ..allTasksAtTasksPage = true
      ..closedTasksAtTasksPage = true
      ..problemsPage = false
      ..statisticPage = true
      ..workload = true
      ..reports = true);
  }

  /// ToDo: настроить разрешение
  /// Получение прав на доступ к окнам приложения для роли "Начальник отдела наладки" ([RoleEnum.headOfServiceDepartment]).
  ///
  /// [accessPermissions] - выделенные права;
  AccessPermissions _getAccessPermissionsForHeadOfServiceDepartment(final AccessPermissions accessPermissions) {
    return accessPermissions.rebuild((builder) => builder
      ..memberDetails = true
      ..tasksPage = true
      ..allTasksAtTasksPage = true
      ..closedTasksAtTasksPage = true
      ..searchAtTasksPage = true
      ..statisticPage = true
      ..reports = true
      ..workload = true);
  }

  /// ToDo: настроить разрешение
  /// Получение прав на доступ к окнам приложения для роли "Инженер-проектировщик" ([RoleEnum.designEngineer]).
  ///
  /// [accessPermissions] - выделенные права;
  AccessPermissions _getAccessPermissionsForDesignEngineer(final AccessPermissions accessPermissions) {
    return accessPermissions.rebuild((builder) => builder
      ..memberDetails = true
      ..tasksPage = true
      ..searchAtTasksPage = true
      ..myTasksAtTasksPage = true
      ..closedTasksAtTasksPage = true
      ..problemsPage = true);
  }

  /// ToDo: настроить разрешение
  /// Получение прав на доступ к окнам приложения для роли "Наладчик" ([RoleEnum.serviceman]).

  /// [accessPermissions] - выделенные права;
  AccessPermissions _getAccessPermissionsForServiceman(final AccessPermissions accessPermissions) {
    return accessPermissions.rebuild((builder) => builder
      ..memberDetails = true
      ..searchAtTasksPage = true
      ..tasksPage = true
      ..myTasksAtTasksPage = true
      ..closedTasksAtTasksPage = true
      ..problemsPage = true);
  }

  /// Получение прав на доступ к окнам приложения для роли "Специалист..."
  /// ([RoleEnum.expertLogistician], [RoleEnum.expertUZTM], [RoleEnum.expertUZTM],
  /// [RoleEnum.expertProject], [RoleEnum.expertCustomer])
  /// [RoleEnum.expertPCModule], [RoleEnum.expertInstallation], [RoleEnum.expertProduction], [RoleEnum.expertSoftware]).
  ///
  /// [accessPermissions] - выделенные права;
  AccessPermissions _getAccessPermissionsForExpert(final AccessPermissions accessPermissions) {
    return accessPermissions.rebuild((builder) => builder
      ..problemsPage = true
      ..chatList = true);
  }

  /// Перезапись доступных действий из [sourceAvailableActions] в [targetAvailableActions].
  AvailableActions _rewritePermissions(
      AvailableActions targetAvailableActions, AvailableActions sourceAvailableActions) {
    return targetAvailableActions.rebuild((builder) {
      if (sourceAvailableActions.canSee != null) {
        builder..canSee = sourceAvailableActions.canSee;
      }
      if (sourceAvailableActions.canCreate != null) {
        builder..canCreate = sourceAvailableActions.canCreate;
      }
      if (sourceAvailableActions.canComment != null) {
        builder..canComment = sourceAvailableActions.canComment;
      }
      if (sourceAvailableActions.canAttachPhoto != null) {
        builder..canAttachPhoto = sourceAvailableActions.canAttachPhoto;
      }
      if (sourceAvailableActions.canTakeInWork != null) {
        builder..canTakeInWork = sourceAvailableActions.canTakeInWork;
      }
      if (sourceAvailableActions.canReturnInWork != null) {
        builder..canReturnInWork = sourceAvailableActions.canReturnInWork;
      }
      if (sourceAvailableActions.canFeedback != null) {
        builder..canFeedback = sourceAvailableActions.canFeedback;
      }
      if (sourceAvailableActions.canComplete != null) {
        builder..canComplete = sourceAvailableActions.canComplete;
      }
      if (sourceAvailableActions.canCancel != null) {
        builder..canCancel = sourceAvailableActions.canCancel;
      }
      if (sourceAvailableActions.canChangeType != null) {
        builder..canChangeType = sourceAvailableActions.canChangeType;
      }
      if (sourceAvailableActions.canComment != null) {
        builder..canComment = sourceAvailableActions.canComment;
      }

      return builder;
    });
  }

  /// Получение доступных действий в приложении.
  ///
  /// [actionPermissions] - выделенные права;
  ///
  /// [role] - роль на проекте;
  ActionPermissions _getActionPermissionsForProject(final ActionPermissions actionPermissions, final RoleEnum role) {
    switch (role) {
      case RoleEnum.ceo:
        {
          return _getActionPermissionsForCeo(actionPermissions);
        }
      case RoleEnum.dispatcher:
        {
          return _getActionPermissionsForDispatcher(actionPermissions);
        }
      case RoleEnum.observer:
        {
          return _getActionPermissionsForObserver(actionPermissions);
        }
      case RoleEnum.curator:
        {
          return _getActionPermissionsForCurator(actionPermissions);
        }
      case RoleEnum.foreman:
        {
          return _getActionPermissionsForForeman(actionPermissions);
        }
      case RoleEnum.headOfDesignDepartment:
        {
          return _getActionPermissionsForHeadOfDesignDepartment(actionPermissions);
        }
      case RoleEnum.headOfServiceDepartment:
        {
          return _getActionPermissionsForHeadOfServiceDepartment(actionPermissions);
        }
      case RoleEnum.designEngineer:
        {
          return _getActionPermissionsForDesignEngineer(actionPermissions);
        }
      case RoleEnum.serviceman:
        {
          return _getActionPermissionsForServiceman(actionPermissions);
        }
      case RoleEnum.expertLogistician:
      case RoleEnum.expertUZTM:
      case RoleEnum.expertProject:
      case RoleEnum.expertCustomer:
      case RoleEnum.expertPCModule:
      case RoleEnum.expertInstallation:
      case RoleEnum.expertProduction:
      case RoleEnum.expertSoftware:
        {
          return _getActionPermissionsForExpert(actionPermissions, role);
        }
      default:
        return ActionPermissions();
    }
  }

  /// ToDo: настроить разрешение
  /// Получение доступных действий для роли "Директор" ([RoleEnum.ceo]).
  ///
  /// [actionPermissions] - выделенные права;
  ActionPermissions _getActionPermissionsForCeo(ActionPermissions actionPermissions) {
    final _availableActions = AvailableActions((b) => b..canSee = true);

    return actionPermissions.rebuild((builder) => builder
      ..taskActionsPermissions =
          _rewritePermissions(_availableActions, actionPermissions.taskActionsPermissions ?? AvailableActions())
              .toBuilder()
      ..logisticsProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.logisticsProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..installationProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.installationProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..uztmProblemActionsPermissions =
          _rewritePermissions(_availableActions, actionPermissions.uztmProblemActionsPermissions ?? AvailableActions())
              .toBuilder()
      ..projectProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.projectProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..customerProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.customerProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..commonProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.commonProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..modulePCProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.modulePCProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..productionProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.productionProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..softwareProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.softwareProblemActionsPermissions ?? AvailableActions())
          .toBuilder());
  }

  /// Получение доступных действий для роли "Диспетчер" ([RoleEnum.dispatcher]).
  ///
  /// [actionPermissions] - выделенные права;
  ActionPermissions _getActionPermissionsForDispatcher(final ActionPermissions actionPermissions) {
    final _availableActions = new AvailableActions((b) => b
      ..canSee = true
      ..canAttachPhoto = true
      ..canComment = true
      ..canTakeInWork = true
      ..canFeedback = true
      ..canComplete = true
      ..canChangeType = true
      ..canReturnInWork = true);

    final _taskActions = AvailableActions((b) => b
      ..canSee = true
      ..canAttachPhoto = true
      ..canComment = true);

    return actionPermissions.rebuild((builder) => builder
      ..taskActionsPermissions =
          _rewritePermissions(_taskActions, actionPermissions.taskActionsPermissions ?? AvailableActions()).toBuilder()
      ..logisticsProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.logisticsProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..installationProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.installationProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..uztmProblemActionsPermissions =
          _rewritePermissions(_availableActions, actionPermissions.uztmProblemActionsPermissions ?? AvailableActions())
              .toBuilder()
      ..projectProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.projectProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..customerProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.customerProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..commonProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.commonProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..modulePCProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.modulePCProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..productionProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.productionProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..softwareProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.softwareProblemActionsPermissions ?? AvailableActions())
          .toBuilder());
  }

  /// Получение прав на доступ к окнам приложения для роли "Специалист...".
  /// ([RoleEnum.expertLogistician], [RoleEnum.expertUZTM], [RoleEnum.expertUZTM],
  /// [RoleEnum.expertProject], [RoleEnum.expertCustomer])
  /// [RoleEnum.expertPCModule], [RoleEnum.expertInstallation], [RoleEnum.expertProduction], [RoleEnum.expertSoftware])
  ///
  /// [actionPermissions] - выделенные права;
  ///
  /// [role] - роль специалиста;
  ActionPermissions _getActionPermissionsForExpert(final ActionPermissions actionPermissions, RoleEnum role) {
    final _availableActions = AvailableActions((builder) => builder
      ..canSee = true
      ..canComment = true
      ..canAttachPhoto = true
      ..canTakeInWork = true
      ..canFeedback = true);

    switch (role) {
      case RoleEnum.expertLogistician:
        {
          return actionPermissions.rebuild((builder) => builder
            ..logisticsProblemActionsPermissions = _rewritePermissions(
                    _availableActions, actionPermissions.logisticsProblemActionsPermissions ?? AvailableActions())
                .toBuilder());
        }
      case RoleEnum.expertUZTM:
        {
          return actionPermissions.rebuild((builder) => builder
            ..uztmProblemActionsPermissions = _rewritePermissions(
                    _availableActions, actionPermissions.uztmProblemActionsPermissions ?? AvailableActions())
                .toBuilder());
        }
      case RoleEnum.expertProject:
        {
          return actionPermissions.rebuild((builder) => builder
            ..projectProblemActionsPermissions = _rewritePermissions(
                    _availableActions, actionPermissions.projectProblemActionsPermissions ?? AvailableActions())
                .toBuilder());
        }
      case RoleEnum.expertCustomer:
        {
          return actionPermissions.rebuild((builder) => builder
            ..customerProblemActionsPermissions = _rewritePermissions(
                    _availableActions, actionPermissions.customerProblemActionsPermissions ?? AvailableActions())
                .toBuilder());
        }
      case RoleEnum.expertPCModule:
        {
          return actionPermissions.rebuild((builder) => builder
            ..modulePCProblemActionsPermissions = _rewritePermissions(
                    _availableActions, actionPermissions.modulePCProblemActionsPermissions ?? AvailableActions())
                .toBuilder());
        }
      case RoleEnum.expertInstallation:
        {
          return actionPermissions.rebuild((builder) => builder
            ..installationProblemActionsPermissions = _rewritePermissions(
                    _availableActions, actionPermissions.installationProblemActionsPermissions ?? AvailableActions())
                .toBuilder());
        }
      case RoleEnum.expertProduction:
        {
          return actionPermissions.rebuild((builder) => builder
            ..productionProblemActionsPermissions = _rewritePermissions(
                    _availableActions, actionPermissions.productionProblemActionsPermissions ?? AvailableActions())
                .toBuilder());
        }
      case RoleEnum.expertSoftware:
        {
          return actionPermissions.rebuild((builder) => builder
            ..projectProblemActionsPermissions = _rewritePermissions(
                    _availableActions, actionPermissions.projectProblemActionsPermissions ?? AvailableActions())
                .toBuilder());
        }
      default:
        return actionPermissions;
    }
  }

  /// Получение доступных действий для роли "Наблюдатель" ([RoleEnum.observer]).
  ///
  /// [actionPermissions] - выделенные права;
  ActionPermissions _getActionPermissionsForObserver(ActionPermissions actionPermissions) {
    final _availableActions = AvailableActions((b) => b..canSee = true);
    return actionPermissions.rebuild((builder) => builder
      ..taskActionsPermissions =
          _rewritePermissions(_availableActions, actionPermissions.taskActionsPermissions ?? AvailableActions())
              .toBuilder()
      ..logisticsProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.logisticsProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..installationProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.installationProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..uztmProblemActionsPermissions =
          _rewritePermissions(_availableActions, actionPermissions.uztmProblemActionsPermissions ?? AvailableActions())
              .toBuilder()
      ..projectProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.projectProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..customerProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.customerProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..commonProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.commonProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..modulePCProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.modulePCProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..productionProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.productionProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..softwareProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.softwareProblemActionsPermissions ?? AvailableActions())
          .toBuilder());
  }

  /// Получение доступных действий для роли "Куратор" ([RoleEnum.curator]).
  ///
  /// [actionPermissions] - выделенные права;
  ActionPermissions _getActionPermissionsForCurator(ActionPermissions actionPermissions) {
    final _availableActions = AvailableActions((b) => b
      ..canSee = true
      ..canAttachPhoto = true
      ..canChangeType = true
      ..canComment = true
      ..canCreate = true
      ..canCancel = true
      ..canFeedback = true
      ..canComplete = true
      ..canReturnInWork = true);

    final _taskAction = AvailableActions((b) => b
      ..canSee = true
      ..canAttachPhoto = true
      ..canComment = true
      ..canCreate = true
      ..canCancel = true
      ..canComplete = true);

    final _commonProblemActions = AvailableActions((b) => b
      ..canSee = true
      ..canAttachPhoto = true
      ..canChangeType = true
      ..canComment = true
      ..canCreate = true
      ..canCancel = true
      ..canFeedback = true
      ..canComplete = true
      ..canTakeInWork = true
      ..canReturnInWork = true);

    return actionPermissions.rebuild((builder) => builder
      ..taskActionsPermissions =
          _rewritePermissions(_taskAction, actionPermissions.taskActionsPermissions ?? AvailableActions()).toBuilder()
      ..logisticsProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.logisticsProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..installationProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.installationProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..uztmProblemActionsPermissions =
          _rewritePermissions(_availableActions, actionPermissions.uztmProblemActionsPermissions ?? AvailableActions())
              .toBuilder()
      ..projectProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.projectProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..customerProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.customerProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..commonProblemActionsPermissions = _rewritePermissions(
              _commonProblemActions, actionPermissions.commonProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..modulePCProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.modulePCProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..productionProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.productionProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..softwareProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.softwareProblemActionsPermissions ?? AvailableActions())
          .toBuilder());
  }

  /// Получение доступных действий для роли "Бригадир" ([RoleEnum.foreman]).
  ///
  /// [actionPermissions] - выделенные права;
  ActionPermissions _getActionPermissionsForForeman(ActionPermissions actionPermissions) {
    final _availableActions = AvailableActions((b) => b
      ..canSee = true
      ..canAttachPhoto = true
      ..canComment = true
      ..canCreate = true
      ..canFeedback = true
      ..canComplete = true
      ..canReturnInWork = true);

    final _taskAction = AvailableActions((b) => b
      ..canSee = true
      ..canAttachPhoto = true
      ..canComment = true
      ..canCreate = true
      ..canComplete = true
      ..canCancel = true
      ..canTakeInWork = true);

    final _userActions = AvailableActions((b) => b
      ..canGoToWork = true
      ..canReleaseToWork = true
      ..canSetReasonForAbsence = true);

    return actionPermissions.rebuild((builder) => builder
      ..userActionsPermissions =
          _rewritePermissions(_userActions, actionPermissions.userActionsPermissions ?? AvailableActions()).toBuilder()
      ..taskActionsPermissions =
          _rewritePermissions(_taskAction, actionPermissions.taskActionsPermissions ?? AvailableActions()).toBuilder()
      ..logisticsProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.logisticsProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..installationProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.installationProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..uztmProblemActionsPermissions =
          _rewritePermissions(_availableActions, actionPermissions.uztmProblemActionsPermissions ?? AvailableActions())
              .toBuilder()
      ..projectProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.projectProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..customerProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.customerProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..commonProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.commonProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..modulePCProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.modulePCProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..productionProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.productionProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..softwareProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.softwareProblemActionsPermissions ?? AvailableActions())
          .toBuilder());
  }

  /// ToDo: настроить разрешение
  /// Получение доступных действий для роли "Начальник отдела проектирования" ([RoleEnum.headOfDesignDepartment]).
  ///
  /// [actionPermissions] - выделенные права;
  ActionPermissions _getActionPermissionsForHeadOfDesignDepartment(ActionPermissions actionPermissions) {
    final _availableActions = new AvailableActions((b) => b
      ..canSee = true
      ..canAttachPhoto = true
      ..canComment = true
      ..canCreate = true
      ..canTakeInWork = true
      ..canComplete = true
      ..canReturnInWork = true);

    final _taskActions = AvailableActions((b) => b
      ..canSee = true
      ..canAttachPhoto = true
      ..canComment = true
      ..canCancel = true);

    final _userActions = AvailableActions((b) => b
      ..canGoToWork = true
      ..canSetReasonForAbsence = true);

    return actionPermissions.rebuild((builder) => builder
      ..userActionsPermissions =
          _rewritePermissions(_userActions, actionPermissions.userActionsPermissions ?? AvailableActions()).toBuilder()
      ..taskActionsPermissions =
          _rewritePermissions(_taskActions, actionPermissions.taskActionsPermissions ?? AvailableActions()).toBuilder()
      ..logisticsProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.logisticsProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..installationProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.installationProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..uztmProblemActionsPermissions =
          _rewritePermissions(_availableActions, actionPermissions.uztmProblemActionsPermissions ?? AvailableActions())
              .toBuilder()
      ..projectProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.projectProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..customerProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.customerProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..commonProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.commonProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..modulePCProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.modulePCProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..productionProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.productionProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..softwareProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.softwareProblemActionsPermissions ?? AvailableActions())
          .toBuilder());
  }

  /// ToDo: настроить разрешение
  /// Получение доступных действий для роли "Начальник отдела наладки" ([RoleEnum.headOfServiceDepartment]).
  ///
  /// [actionPermissions] - выделенные права;
  ActionPermissions _getActionPermissionsForHeadOfServiceDepartment(ActionPermissions actionPermissions) {
    final _availableActions = new AvailableActions((b) => b
      ..canSee = true
      ..canAttachPhoto = true
      ..canComment = true
      ..canCreate = true
      ..canTakeInWork = true
      ..canComplete = true
      ..canReturnInWork = true);

    final _taskActions = AvailableActions((b) => b
      ..canSee = true
      ..canAttachPhoto = true
      ..canComment = true
      ..canCancel = true);

    final _userActions = AvailableActions((b) => b
      ..canGoToWork = true
      ..canReleaseToWork = true
      ..canSetReasonForAbsence = true);

    return actionPermissions.rebuild((builder) => builder
      ..userActionsPermissions =
          _rewritePermissions(_userActions, actionPermissions.userActionsPermissions ?? AvailableActions()).toBuilder()
      ..taskActionsPermissions =
          _rewritePermissions(_taskActions, actionPermissions.taskActionsPermissions ?? AvailableActions()).toBuilder()
      ..logisticsProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.logisticsProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..installationProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.installationProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..uztmProblemActionsPermissions =
          _rewritePermissions(_availableActions, actionPermissions.uztmProblemActionsPermissions ?? AvailableActions())
              .toBuilder()
      ..projectProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.projectProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..customerProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.customerProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..commonProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.commonProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..modulePCProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.modulePCProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..productionProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.productionProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..softwareProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.softwareProblemActionsPermissions ?? AvailableActions())
          .toBuilder());
  }

  /// ToDo: настроить разрешение
  /// Получение доступных действий для роли "Инженер-проектировщик" ([RoleEnum.designEngineer]).
  ///
  /// [actionPermissions] - выделенные права;
  ActionPermissions _getActionPermissionsForDesignEngineer(ActionPermissions actionPermissions) {
    final _availableActions = new AvailableActions((b) => b
      ..canSee = true
      ..canAttachPhoto = true
      ..canComment = true
      ..canCreate = true
      ..canTakeInWork = true
      ..canComplete = true
      ..canReturnInWork = true);

    final _taskActions = AvailableActions((b) => b
      ..canSee = true
      ..canAttachPhoto = true
      ..canComment = true);

    final _userActions = AvailableActions((b) => b..canGoToWork = true);

    return actionPermissions.rebuild((builder) => builder
      ..userActionsPermissions =
          _rewritePermissions(_userActions, actionPermissions.userActionsPermissions ?? AvailableActions()).toBuilder()
      ..taskActionsPermissions =
          _rewritePermissions(_taskActions, actionPermissions.taskActionsPermissions ?? AvailableActions()).toBuilder()
      ..logisticsProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.logisticsProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..installationProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.installationProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..uztmProblemActionsPermissions =
          _rewritePermissions(_availableActions, actionPermissions.uztmProblemActionsPermissions ?? AvailableActions())
              .toBuilder()
      ..projectProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.projectProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..customerProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.customerProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..commonProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.commonProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..modulePCProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.modulePCProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..productionProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.productionProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..softwareProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.softwareProblemActionsPermissions ?? AvailableActions())
          .toBuilder());
  }

  /// ToDo: настроить разрешение
  /// Получение доступных действий для роли "Наладчик" ([RoleEnum.serviceman]).
  ///
  /// [actionPermissions] - выделенные права;
  ActionPermissions _getActionPermissionsForServiceman(ActionPermissions actionPermissions) {
    final _availableActions = new AvailableActions((b) => b
      ..canSee = true
      ..canAttachPhoto = true
      ..canComment = true
      ..canCreate = true
      ..canComplete = true
      ..canTakeInWork = true
      ..canReturnInWork = true);

    final _taskActions = AvailableActions((b) => b
      ..canSee = true
      ..canAttachPhoto = true
      ..canComment = true
      ..canCreate = true
      ..canTakeInWork = true
      ..canSuspend = true
      ..canComplete = true);

    final _userActions = AvailableActions((b) => b..canGoToWork = true);

    return actionPermissions.rebuild((builder) => builder
      ..userActionsPermissions =
          _rewritePermissions(_userActions, actionPermissions.userActionsPermissions ?? AvailableActions()).toBuilder()
      ..taskActionsPermissions =
          _rewritePermissions(_taskActions, actionPermissions.taskActionsPermissions ?? AvailableActions()).toBuilder()
      ..logisticsProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.logisticsProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..installationProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.installationProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..uztmProblemActionsPermissions =
          _rewritePermissions(_availableActions, actionPermissions.uztmProblemActionsPermissions ?? AvailableActions())
              .toBuilder()
      ..projectProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.projectProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..customerProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.customerProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..commonProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.commonProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..modulePCProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.modulePCProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..productionProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.productionProblemActionsPermissions ?? AvailableActions())
          .toBuilder()
      ..softwareProblemActionsPermissions = _rewritePermissions(
              _availableActions, actionPermissions.softwareProblemActionsPermissions ?? AvailableActions())
          .toBuilder());
  }
// endregion

}
