import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models/permissions/available_actions.dart';

part 'action_permissions.g.dart';

abstract class ActionPermissions
    implements Built<ActionPermissions, ActionPermissionsBuilder> {
  @Deprecated('Использовать [userRoleGuidsAtProject]')
  String? get userRoleId;

  BuiltList<String>? get userRoleGuidsAtProject;

  String? get projectObjId;

  /// Разрешения на работу с пользователем
  AvailableActions? get userActionsPermissions;

  /// Разрешения на работу с задачами
  AvailableActions? get taskActionsPermissions;

  /// Разрешения на работу с проблемами логистики
  AvailableActions? get logisticsProblemActionsPermissions;

  /// Разрешения на работу с проблемами монтажа
  AvailableActions? get installationProblemActionsPermissions;

  /// Разрешения на работу с проблемами продукции УЗТМ
  AvailableActions? get uztmProblemActionsPermissions;

  /// Разрешения на работу с проблемами проекта
  AvailableActions? get projectProblemActionsPermissions;

  /// Разрешения на работу с проблемами заказчика
  AvailableActions? get customerProblemActionsPermissions;

  /// Разрешения на работу с общими проблемами
  AvailableActions? get commonProblemActionsPermissions;

  /// Разрешения на работу с проблемами ПК модуля
  AvailableActions? get modulePCProblemActionsPermissions;

  /// Разрешения на работу с проблемами производства
  AvailableActions? get productionProblemActionsPermissions;

  /// Разрешения на работу с проблемами ПО
  AvailableActions? get softwareProblemActionsPermissions;

  ActionPermissions._();

  factory ActionPermissions([void Function(ActionPermissionsBuilder) updates]) =
      _$ActionPermissions;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(ActionPermissions.serializer, this)
        as Map<String, dynamic>;
  }

  static ActionPermissions? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ActionPermissions.serializer, json);
  }

  static Serializer<ActionPermissions> get serializer =>
      _$actionPermissionsSerializer;
}
