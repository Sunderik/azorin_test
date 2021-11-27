import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models.dart';
import 'package:tecon_task/core/domain/objects/models/permissions/permissions.dart';
import 'package:tecon_task/core/domain/objects/models/user_role.dart';

part 'current_user.g.dart';

abstract class CurrentUser implements Built<CurrentUser, CurrentUserBuilder> {
  String? get id;

  String? get userName;

  String? get apiKey;

  bool? get isSigned;

  String? get email;

  String? get email2;

  String? get phone;

  BuiltList<UserRole>? get userRoles;

  /// Список разделов стадии П (guid и name).
  BuiltList<SimpleType>? get sectionsP;

  /// Список разделов стадии Р (guid и name).
  BuiltList<SimpleType>? get sectionsR;

  Permissions? get permissions;

  CurrentUser._();

  factory CurrentUser([void Function(CurrentUserBuilder) updates]) = _$CurrentUser;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(CurrentUser.serializer, this) as Map<String, dynamic>;
  }

  static CurrentUser? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CurrentUser.serializer, json);
  }

  static Serializer<CurrentUser> get serializer => _$currentUserSerializer;
}
