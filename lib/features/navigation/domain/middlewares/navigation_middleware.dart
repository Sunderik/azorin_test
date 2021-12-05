import 'package:azorin_test/core/domain/domain.dart';
import 'package:azorin_test/features/users_list_screen/presentation/users_list_screen.dart';
import 'package:built_redux/built_redux.dart';
import 'package:flutter/material.dart' hide Action;

import '../../navigation.dart';
import '../app_route.dart';
import '../navigation_actions.dart';

MiddlewareBuilder<AppState, AppStateBuilder, AppActions> navigationMiddleware() {
  return MiddlewareBuilder<AppState, AppStateBuilder, AppActions>()..add(NavigationActionsNames.routeTo, routeTo);
}

void routeTo(
    MiddlewareApi<AppState, AppStateBuilder, AppActions> api, ActionHandler next, Action<AppRoute> action) async {
  next(action);
  final payload = action.payload;
  final rootNavigator = api.state.navigationState.rootNavigatorKey!.currentState;

  switch (payload.route) {
    case Routes.pop:
      rootNavigator!.maybePop();
      break;

    case Routes.usersList:
      rootNavigator!.pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const UsersListScreen(),
          settings: RouteSettings(name: payload.route.name),
        ),
        (route) {
          return false;
        },
      );
      break;

    default:
      break;
  }
}
