import 'package:azorin_test/core/domain/domain.dart';
import 'package:azorin_test/features/user_details/presentation/user_details_screen.dart';
import 'package:azorin_test/features/user_details/presentation/widgets/map_view.dart';
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
    case Routes.userDetails:
      final int userId = (payload.bundle as Map<String, dynamic>)['userId']!;
      rootNavigator!.push(
        MaterialPageRoute(
          builder: (context) => UserDetails(userId: userId),
          settings: RouteSettings(name: payload.route.name),
        ),
      );
      break;
    case Routes.showMap:
      final Geolocation geolocation = (payload.bundle as Map<String, dynamic>)['geolocation']!;
      rootNavigator!.push(
        MaterialPageRoute(
          builder: (context) => MapView(
            geolocation: geolocation,
          ),
          settings: RouteSettings(name: payload.route.name),
        ),
      );
      break;
    default:
      break;
  }
}
