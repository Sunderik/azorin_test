import 'package:built_collection/built_collection.dart';
import 'package:built_redux/built_redux.dart';
import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/features/user_details/domain/domain.dart';
import 'package:azorin_test/features/user_details/repository/models/models.dart';
import 'package:collection/collection.dart';

MiddlewareBuilder<AppState, AppStateBuilder, AppActions> userDetailsMiddleware() {
  return MiddlewareBuilder<AppState, AppStateBuilder, AppActions>()
    ..add(UserDetailsActionsNames.userLastsPostsRequest, _userLastsPostsRequest)
    ..add(UserDetailsActionsNames.setUserLastsPostsResponse, _setUserLastsPostsResponse)
    ..add(UserDetailsActionsNames.userLastsAlbumsRequest, _userLastsAlbumsRequest)
    ..add(UserDetailsActionsNames.setUserLastsAlbumsResponse, _setUserLastsAlbumsResponse);
}

/// Запрос на получение информации об исполнителе.
void _userLastsPostsRequest(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, ActionHandler next,
    Action<UserLastsPostsRequest> action) async {
  next(action);
}

/// Ответ на запрос изменения статуса пользователя.
void _setUserLastsPostsResponse(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, ActionHandler next,
    Action<UserLastsPostsResponse> action) async {
  next(action);

  final UserLastsPostsResponse userLastsPostsResponse = action.payload;
}

/// Запрос на изменение статуса пользователя.
void _userLastsAlbumsRequest(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, ActionHandler next,
    Action<UserLastsAlbumsRequest> action) async {
  next(action);
}

/// Ответ на запрос получения информации о сотруднике.
void _setUserLastsAlbumsResponse(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, ActionHandler next,
    Action<UserLastsAlbumsResponse> action) async {
  next(action);

  final UserLastsAlbumsResponse userLastsAlbumsResponse = action.payload;


}
