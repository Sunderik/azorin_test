 import 'package:azorin_test/core/core.dart';
import 'package:built_value/built_value.dart';

part 'users_list_state.g.dart';

abstract class UsersListScreenState implements Built<UsersListScreenState, UsersListScreenStateBuilder> {
  /// Статус экрана.
  ScreenStatusEnum? get usersListScreenStatus;

  UsersListScreenState._();

  factory UsersListScreenState([void Function(UsersListScreenStateBuilder) updates]) = _$UsersListScreenState;
}
