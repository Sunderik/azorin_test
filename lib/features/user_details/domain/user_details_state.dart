import 'package:built_value/built_value.dart';
import 'package:azorin_test/core/core.dart';

part 'user_details_state.g.dart';

abstract class UserDetailsState implements Built<UserDetailsState, UserDetailsStateBuilder> {
  /// Объект выбранного опльзователя
  User? get user;

  /// Статус экрана.
  ScreenStatusEnum? get screenStatus;

  UserDetailsState._();

  factory UserDetailsState([void Function(UserDetailsStateBuilder) updates]) = _$UserDetailsState;
}
