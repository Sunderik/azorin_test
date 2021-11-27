import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models/permissions/access_permissions.dart';
import 'package:tecon_task/core/domain/objects/models/permissions/action_permissions.dart';

part 'permissions.g.dart';

abstract class Permissions implements Built<Permissions, PermissionsBuilder> {
  AccessPermissions? get accessPermissions;

  BuiltList<ActionPermissions>? get actionsPermissions;

  @Deprecated('Использовать [actionsPermissions]')
  ActionPermissions? get actionPermissions;

  Permissions._();

  factory Permissions([void Function(PermissionsBuilder) updates]) =
      _$Permissions;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(Permissions.serializer, this)
        as Map<String, dynamic>;
  }

  static Permissions? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Permissions.serializer, json);
  }

  static Serializer<Permissions> get serializer => _$permissionsSerializer;
}
