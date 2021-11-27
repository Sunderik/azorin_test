import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models.dart';

part 'user_role.g.dart';

abstract class UserRole implements Built<UserRole, UserRoleBuilder> {
  UserRole._();

  factory UserRole([void Function(UserRoleBuilder) updates]) = _$UserRole;

  /// Группа предприятий (guid и name).
  SimpleType? get group;

  /// Предприятие (guid и name).
  SimpleType? get factory;

  /// Система автоматизации (guid и name).
  SimpleType? get system;

  /// Проект (guid и name).
  SimpleType? get project;

  /// Идентификатор типа проекта.
  String? get typeGuid;

  /// Идентификатор статуса проекта.
  String? get statusGuid;

  /// Идентификатор перечисления роли пользователя.
  String? get roleGuid;

  /// Номер текущего дня проекта.
  String? get currentDay;

  /// Текущий статус смены пользователя.
  bool? get shiftStatus;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(UserRole.serializer, this) as Map<String, dynamic>;
  }

  static UserRole? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(UserRole.serializer, json);
  }

  static Serializer<UserRole> get serializer => _$userRoleSerializer;
}
