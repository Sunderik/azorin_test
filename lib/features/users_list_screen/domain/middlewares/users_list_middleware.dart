import 'package:built_collection/built_collection.dart';
import 'package:built_redux/built_redux.dart';
import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/features/users_list_screen/domain/actions/users_list_actions.dart';
import 'package:azorin_test/features/users_list_screen/repository/models/models.dart';

import 'package:azorin_test/injection.dart';

MiddlewareBuilder<AppState, AppStateBuilder, AppActions> usersListMiddleware() {
  return MiddlewareBuilder<AppState, AppStateBuilder, AppActions>()
    ..add(UsersListScreenActionsNames.usersRequest, _usersRequest)
    ..add(UsersListScreenActionsNames.setUsersResponse, _setUsersResponse);
}

/// Запрос поулчения исполнителей.
void _usersRequest(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, next, Action<void> action) async {
  next(action);
}

/// Ответ на запрос получения исполнителей.
void _setUsersResponse(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, next, Action<UsersResponse> action) {
  next(action);

  final usersResponse = action.payload;

  switch (usersResponse.httpCode) {
    case 200:
       api.actions.usersScreen.setUsersListScreenStatus(ScreenStatusEnum.wait);
       api.actions.users.setUsers(usersResponse.users!.toBuiltList());
      break;
    default:
      {
        // if (!api.state.isOfflineMode) {
        //   api.actions.teamListActions.setTeamListScreenStatus(ScreenStatusEnum.fail);
        //   injector
        //       .get<DisplayErrorService>()
        //       .displayServerError(httpCode: usersResponse.httpCode, message: usersResponse.message);
        // }
      }
  }
}
