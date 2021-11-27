import 'package:built_collection/built_collection.dart';
import 'package:built_redux/built_redux.dart';
import 'package:tecon_task/core/domain/domain.dart';

NestedReducerBuilder<AppState, AppStateBuilder, TeamState, TeamStateBuilder> createTeamReducer() {
  return NestedReducerBuilder<AppState, AppStateBuilder, TeamState, TeamStateBuilder>(
    (state) => state.teamState,
    (builder) => builder.teamState,
  )
    ..add(TeamActionsNames.setTeamMembers, _setTeamMembers)
    ..add(TeamActionsNames.clear, _clear);
}

void _setTeamMembers(TeamState state, Action<BuiltList<Executor>> action, TeamStateBuilder builder) {
  builder.executors.replace(action.payload);
}

void _clear(TeamState state, Action<void> action, TeamStateBuilder builder) {
  builder.executors.clear();
}
