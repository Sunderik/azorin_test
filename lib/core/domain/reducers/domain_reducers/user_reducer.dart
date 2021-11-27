import 'package:built_redux/built_redux.dart' as redux;
import 'package:tecon_task/core/domain/domain.dart';
import 'package:collection/collection.dart';

redux.NestedReducerBuilder<AppState, AppStateBuilder, UserState, UserStateBuilder> createUserReducer() {
  return redux.NestedReducerBuilder<AppState, AppStateBuilder, UserState, UserStateBuilder>(
    (state) => state.userState,
    (builder) => builder.userState,
  )
    ..add<String>(UserActionsNames.setApiKey, _setApiKey)
    ..add<CurrentUser>(UserActionsNames.setCurrentUser, _setCurrentUser)
    ..add<SimpleType>(UserActionsNames.changeProjectStatus, _changeProjectStatus);
}

void _setApiKey(
  UserState state,
  redux.Action<String> action,
  UserStateBuilder builder,
) =>
    builder.currentUser.apiKey = action.payload;

void _setCurrentUser(
  UserState state,
  redux.Action<CurrentUser> action,
  UserStateBuilder builder,
) =>
    builder.currentUser.replace(action.payload);

/// Смена статуса проекта в userRole
/// actions является массивом строк из 2х элементов
/// 1-й элемент это guid, 2-й - guid нового статуса.
void _changeProjectStatus(
  UserState state,
  redux.Action<SimpleType> action,
  UserStateBuilder builder,
) {
  var roleBuilder = builder.currentUser.userRoles
      .build()
      .firstWhereOrNull((role) => role.project?.guid == action.payload.guid)
      ?.rebuild((b) => b.statusGuid = action.payload.name);
  var a = builder.currentUser.userRoles;
  a.removeWhere((b) => b.project?.guid == action.payload.guid);
  if (roleBuilder != null) {
    a.add(roleBuilder);
  }
  builder.currentUser..userRoles = a;
}
