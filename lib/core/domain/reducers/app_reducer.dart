import 'package:azorin_test/core/domain/global_state/domain_states/users_state.dart';
import 'package:azorin_test/features/logger/logger.dart';
import 'package:azorin_test/features/navigation/domain/navigaion_state.dart';
import 'package:azorin_test/features/users_list_screen/domain/users_list_state.dart';
import 'package:built_redux/built_redux.dart';

import '../domain.dart';

NestedReducerBuilder<AppState, AppStateBuilder, AppState, AppStateBuilder> createAppStateReducer() {
  return NestedReducerBuilder<AppState, AppStateBuilder, AppState, AppStateBuilder>(
    (state) => state,
    (builder) => builder,
  )
    ..add(AppActionsNames.clearState, _clearAppState)
    ..add(AppActionsNames.setTheme, _setTheme);
}

void _clearAppState(AppState state, Action<void> action, AppStateBuilder builder) {
  logger.i("CLEARING STATE");
  builder
    ..navigationState = NavigationState().toBuilder()
    ..usersState = UsersState().toBuilder()
    ..usersListState = UsersListScreenState().toBuilder()
    ..userDetailsState = UserDetailsState().toBuilder();
}

void _setTheme(AppState state, Action<void> action, AppStateBuilder builder) {
  logger.i("SETTING THEME");
}
