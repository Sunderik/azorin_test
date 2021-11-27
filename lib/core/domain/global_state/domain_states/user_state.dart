import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/domain.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';

part 'user_state.g.dart';

abstract class UserState implements Built<UserState, UserStateBuilder> {
  UserState._();

  factory UserState([void Function(UserStateBuilder) updates]) = _$UserState;

  CurrentUser? get currentUser;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(UserState.serializer, this) as Map<String, dynamic>;
  }

  static UserState? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(UserState.serializer, json);
  }

  static Serializer<UserState> get serializer => _$userStateSerializer;
}
