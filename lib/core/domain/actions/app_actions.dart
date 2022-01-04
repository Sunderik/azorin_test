import 'package:azorin_test/features/albums_list_screen/domain/actions/albums_list_actions.dart';
import 'package:built_redux/built_redux.dart';

import 'package:azorin_test/core/domain/actions/domain_actions/users_actions.dart';
import 'package:azorin_test/features/navigation/navigation.dart';
import 'package:azorin_test/features/posts_list_screen/domain/actions/posts_list_actions.dart';
import 'package:azorin_test/features/user_details_screen/domain/actions/user_details_actions.dart';
import 'package:azorin_test/features/users_list_screen/domain/actions/users_list_actions.dart';



part 'app_actions.g.dart';

///
abstract class AppActions extends ReduxActions {
  AppActions._();

  factory AppActions() => _$AppActions();

  ///
  late ActionDispatcher<void> clearState;

  ///
  late ActionDispatcher<void> setTheme;

  ///
  NavigationActions get navigation;

  ///
  UsersActions get users;

  ///
  UsersListScreenActions get usersScreen;

  ///
  PostsListScreenActions get postsScreen;

  ///
  AlbumsListScreenActions get albumsScreen;

  ///
  UserDetailsActions get userScreen;
}
