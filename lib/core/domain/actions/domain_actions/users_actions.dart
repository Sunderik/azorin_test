import 'package:azorin_test/core/core.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_redux/built_redux.dart';

part 'users_actions.g.dart';

abstract class UsersActions extends ReduxActions {
  UsersActions._();

  factory UsersActions() => _$UsersActions();

  late ActionDispatcher<BuiltList<User>> setUsers;

  late ActionDispatcher<void> clear;
}
