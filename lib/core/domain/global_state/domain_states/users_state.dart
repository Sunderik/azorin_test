import 'dart:convert';

import 'package:azorin_test/core/domain/models/user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:azorin_test/core/domain/serializers/serializers.dart';
import 'package:azorin_test/core/domain/domain.dart';

part 'users_state.g.dart';

///
abstract class UsersState implements Built<UsersState, UsersStateBuilder> {
  ///
  BuiltList<User> get users;

  UsersState._();

  ///
  factory UsersState([void Function(UsersStateBuilder) updates]) = _$UsersState;

  ///
  String toJson() {
    return json.encode(mainSerializers.serializeWith(UsersState.serializer, this));
  }

  ///
  static UsersState? fromJson(String jsonString) {
    return mainSerializers.deserializeWith(UsersState.serializer, json.decode(jsonString));
  }

  ///
  static Serializer<UsersState> get serializer => _$usersStateSerializer;
}
