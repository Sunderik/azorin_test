import 'package:built_redux/built_redux.dart';
import 'package:collection/collection.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/core/domain/objects/enums.dart';

abstract class BaseEpic {
  /// Идентификатор типа / инстанса отдела проектирования.
  String _designDepartmentGuid = '59b80dbe-b6e0-4a02-83e4-ec67962ffb2e';

  /// Идентификатор типа / инстанса отдела наладки.
  String _serviceDepartmentGuid = 'e988eb18-2536-4ce7-9cec-967454043f8d';

  /// Получить идентификатор инстанса.
  ///
  /// [projectGuid] - идентификатор проекта, для которого определяется инстанс.
  String? getInstanceId({
    required MiddlewareApi<AppState, AppStateBuilder, AppActions> api,
    String? projectGuid,
    DepartmentEnum? department,
  }) {
    /// Проверяем, что сотрудник относится к отделу проектирования.
    final isEveryDepartmentDesign =
        api.state.userState.currentUser?.getUserDepartments().every((e) => e == DepartmentEnum.design) ?? false;

    /// Проверяем, что сотрудник относится к отделу наладки.
    final isEveryDepartmentService =
        api.state.userState.currentUser?.getUserDepartments().every((e) => e == DepartmentEnum.service) ?? false;

    if (isEveryDepartmentDesign || department == DepartmentEnum.design) {
      return _designDepartmentGuid;
    } else if (isEveryDepartmentService || department == DepartmentEnum.service) {
      return _serviceDepartmentGuid;
    } else {
      if (!api.state.isOfflineMode) {
        return api.state.addressState.projectAddressList
            ?.firstWhereOrNull((project) => project.guid == projectGuid)
            ?.instanceId;
      } else {
        return api.state.userState.currentUser!.userRoles
            ?.firstWhereOrNull((role) => role.project!.guid == projectGuid)
            ?.system!
            .guid;
      }
    }
  }
}
