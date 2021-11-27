import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/core/domain/objects/enums.dart';
import 'package:tecon_task/injection.dart';

extension CurrentUserExtension on CurrentUser {
  /// Получение отдела пользоваля
  List<DepartmentEnum> getUserDepartments() {
    /// Список департаменов
    var departments = <DepartmentEnum>[];

    /// Получаем список ролей
    final roles = this.userRoles?.toList();
    if (roles == null) {
      return departments;
    }

    /// Проверяем относится ли список ролей к отделу монтажа.
    final isUserFromInstallDepartment = _isUserFromDepartment(roles, DepartmentEnum.install);

    /// Проверяем относится ли список ролей к отделу проектирования.
    final isUserFromDesignDepartment = _isUserFromDepartment(roles, DepartmentEnum.design);

    /// Проверяем относится ли список ролей к отделу наладки.
    final isUserFromServiceDepartment = _isUserFromDepartment(roles, DepartmentEnum.service);

    if (isUserFromInstallDepartment) {
      departments.add(DepartmentEnum.install);
    }

    if (isUserFromDesignDepartment) {
      departments.add(DepartmentEnum.design);
    }

    if (isUserFromServiceDepartment) {
      departments.add(DepartmentEnum.service);
    }

    return departments;
  }

  /// Определяет относится ли список ролей [roles] к отделу [department].
  bool _isUserFromDepartment(List<UserRole> roles, DepartmentEnum department) {
    return roles.any((element) {
      final roleGuid = element.roleGuid;
      if (roleGuid == null) {
        return false;
      }

      final role = RoleEnum.getRoleById(roleGuid);
      return role.department.contains(department);
    });
  }

  /// Получение роли пользователя.
  RoleInAppEnum getUserRole() {
    /// Получить список ролей польователя
    final List<UserRole>? userRoles = this.userRoles?.toList();
    if (userRoles != null) {
      /// Вернуть одну из ролей, если роли в коллекции userRoles совпадают
      if (_isRolesObserver(userRoles)) return RoleInAppEnum.observer;
      if (_isRolesDispatcher(userRoles)) return RoleInAppEnum.dispatcher;
      if (_isRolesCurator(userRoles)) return RoleInAppEnum.curator;
      if (_isRolesForeman(userRoles)) return RoleInAppEnum.foreman;
      if (_isRolesExpertObserver(userRoles)) return RoleInAppEnum.expertObserver;
      if (_isRolesCeo(userRoles)) return RoleInAppEnum.ceo;
      if (_isRolesHeadOfDesignDepartment(userRoles)) return RoleInAppEnum.headOfDesignDepartment;
      if (_isRolesHeadOfServiceDepartment(userRoles)) return RoleInAppEnum.headOfServiceDepartment;
      if (_isRolesDesignEngineer(userRoles)) return RoleInAppEnum.designEngineer;
      if (_isRolesServiceman(userRoles)) return RoleInAppEnum.serviceman;

      if (userRoles.length == 1) {
        /// Если в коллекции одна роль эксперта вернуть [RoleInAppEnum.expert]
        if (_isRolesExpert(userRoles)) return RoleInAppEnum.expert;
      } else if (userRoles.length > 1) {
        /// Если в коллекции множество ролей эксперта вернуть [RoleInAppEnum.multiExpert]
        if (_isRolesExpert(userRoles)) return RoleInAppEnum.multiExpert;

        /// Если не подходит ни одна из ролей попытаться вернуть роль для текущего проекта
        return getUserRoleAtCurrentProject();
      }
    }

    /// Вернуть роль 'Гость', если ролей нет
    return RoleInAppEnum.guest;
  }

  /// Получение роли пользователя на проекте с идентификатором [projectGuid].
  RoleInAppEnum getUserRoleAtProject(String projectGuid) {
    /// Получить список ролей пользователя
    final List<UserRole>? userRoles = this.userRoles?.toList();
    if (userRoles != null) {
      /// Если список ролей и идентификатор проекта не null, то получить роли для проекта с заданным идентификатором
      final List<UserRole> userRolesAtProject =
          userRoles.where((userRole) => userRole.project?.guid == projectGuid).toList();

      if (userRolesAtProject.length == 1) {
        /// Вернуть одну из ролей для проекта
        if (_isRolesObserver(userRolesAtProject)) return RoleInAppEnum.observer;
        if (_isRolesDispatcher(userRolesAtProject)) return RoleInAppEnum.dispatcher;
        if (_isRolesCurator(userRolesAtProject)) return RoleInAppEnum.curator;
        if (_isRolesForeman(userRolesAtProject)) return RoleInAppEnum.foreman;
        if (_isRolesCeo(userRoles)) return RoleInAppEnum.ceo;
        if (_isRolesHeadOfDesignDepartment(userRoles)) return RoleInAppEnum.headOfDesignDepartment;
        if (_isRolesHeadOfServiceDepartment(userRoles)) return RoleInAppEnum.headOfServiceDepartment;
        if (_isRolesDesignEngineer(userRoles)) return RoleInAppEnum.designEngineer;
        if (_isRolesServiceman(userRoles)) return RoleInAppEnum.serviceman;
      } else if (userRolesAtProject.length > 1 && _isRolesExpert(userRolesAtProject)) {
        /// Вернуть роль [RoleInAppEnum.multiExpert], если у пользователя на проекте задано несколько ролей эксперта
        return RoleInAppEnum.multiExpert;
      }
    }
    return RoleInAppEnum.guest;
  }

  /// Получение роли пользователя на текущем проекте.
  RoleInAppEnum getUserRoleAtCurrentProject() {
    /// Получение данных из стора
    final StoreProvider _storeProvider = injector.get<StoreProvider>();

    /// Получение текущего проекта
    final Project? currentProject = _storeProvider.store?.state.projectsState.currentProject;
    final String? currentProjectGuid = currentProject?.guid;
    if (currentProject != null && currentProjectGuid != null) {
      /// Получить роль на текущем проекте
      return getUserRoleAtProject(currentProjectGuid);
    } else {
      return RoleInAppEnum.guest;
    }
  }

  /// Метод возвращает true, если каждая роль в коллекции [userRoles] в коллекции соответствует одной из ролей 'Специалист...'.
  bool _isRolesExpert(final List<UserRole> userRoles) {
    return userRoles.every((role) =>
        role.roleGuid == RoleEnum.expertLogistician.ids ||
        role.roleGuid == RoleEnum.expertUZTM.ids ||
        role.roleGuid == RoleEnum.expertProject.ids ||
        role.roleGuid == RoleEnum.expertCustomer.ids ||
        role.roleGuid == RoleEnum.expertPCModule.ids ||
        role.roleGuid == RoleEnum.expertInstallation.ids ||
        role.roleGuid == RoleEnum.expertProduction.ids ||
        role.roleGuid == RoleEnum.expertSoftware.ids);
  }

  /// Метод возвращает true, если каждая роль в коллекции [userRoles] соответствует роли 'Наблюдатель'.
  bool _isRolesObserver(final List<UserRole> userRoles) {
    return userRoles.every((role) => role.roleGuid == RoleEnum.observer.ids);
  }

  /// Метод возвращает true, если каждая роль в коллекции [userRoles] соответствует роли 'Диспетчер'.
  bool _isRolesDispatcher(final List<UserRole> userRoles) {
    return userRoles.every((role) => role.roleGuid == RoleEnum.dispatcher.ids);
  }

  /// Метод возвращает true, если каждая роль в коллекции [userRoles] соответствует роли 'Куратор'.
  bool _isRolesCurator(final List<UserRole> userRoles) {
    return userRoles.every((role) => role.roleGuid == RoleEnum.curator.ids);
  }

  /// Метод возвращает true, если каждая роль в коллекции [userRoles] соответствует роли 'Бригадир'.
  bool _isRolesForeman(final List<UserRole> userRoles) {
    return _isRoleTheSame(userRoles, RoleEnum.foreman);
  }

  /// Метод возвращает true, если в коллекции [userRoles] совмещаются роли 'Наблюдатель' и 'Специалист'.
  bool _isRolesExpertObserver(final List<UserRole> userRoles) {
    final isAnyRoleObserver = userRoles.any((element) => element.roleGuid == RoleEnum.observer.ids);
    if (isAnyRoleObserver) {
      userRoles.removeWhere((element) => element.roleGuid == RoleEnum.observer.ids);
      return _isRolesExpert(userRoles);
    } else {
      return false;
    }
  }

  /// Метод возвращает true, если в коллекции [userRoles] соответствует роли 'Директор'.
  bool _isRolesCeo(final List<UserRole> userRoles) {
    return userRoles.every((element) => element.roleGuid == RoleEnum.ceo.ids);
  }

  /// Метод возвращает true, если в коллекции [userRoles] соответствует роли 'Начальник отдела проектирования'.
  bool _isRolesHeadOfDesignDepartment(final List<UserRole> userRoles) {
    return userRoles.every((element) => element.roleGuid == RoleEnum.headOfDesignDepartment.ids);
  }

  /// Метод возвращает true, если в коллекции [userRoles] соответствует роли 'Начальник отдела наладки'.
  bool _isRolesHeadOfServiceDepartment(final List<UserRole> userRoles) {
    return userRoles.every((element) => element.roleGuid == RoleEnum.headOfServiceDepartment.ids);
  }

  /// Метод возвращает true, если в коллекции [userRoles] соответствует роли 'Проектировщик'.
  bool _isRolesDesignEngineer(final List<UserRole> userRoles) {
    return userRoles.every((element) => element.roleGuid == RoleEnum.designEngineer.ids);
  }

  /// Метод возвращает true, если в коллекции [userRoles] соответствует роли 'Наладчик'.
  bool _isRolesServiceman(final List<UserRole> userRoles) {
    return userRoles.every((element) => element.roleGuid == RoleEnum.serviceman.ids);
  }

  /// Метод возвращает true, если все роли коллекции [userRoles]
  /// соответствуют роли [role]
  bool _isRoleTheSame(final List<UserRole> userRoles, RoleEnum role) {
    return userRoles.every((element) => element.roleGuid == role.ids);
  }
}
