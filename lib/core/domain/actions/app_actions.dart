import 'package:azorin_test/core/domain/actions/domain_actions/users_actions.dart';
import 'package:azorin_test/features/navigation/navigation.dart';
import 'package:azorin_test/features/user_details/domain/actions/user_details_actions.dart';
import 'package:azorin_test/features/users_list_screen/domain/actions/users_list_actions.dart';
import 'package:built_redux/built_redux.dart';

part 'app_actions.g.dart';

abstract class AppActions extends ReduxActions {
  AppActions._();
  factory AppActions() => _$AppActions();

  late ActionDispatcher<void> clearState;
  late ActionDispatcher<void> setTheme;

  NavigationActions get navigation;
  UsersActions get users;
  UsersListScreenActions get usersScreen;
  UserDetailsActions get userScreen;
}
