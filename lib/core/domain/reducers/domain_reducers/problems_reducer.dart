import 'package:built_collection/built_collection.dart';
import 'package:built_redux/built_redux.dart';
import 'package:tecon_task/core/domain/domain.dart';

NestedReducerBuilder<AppState, AppStateBuilder, ProblemsState,
    ProblemsStateBuilder> createProblemsReducer() {
  return NestedReducerBuilder<AppState, AppStateBuilder, ProblemsState,
      ProblemsStateBuilder>(
    (state) => state.problemsState,
    (builder) => builder.problemsState,
  )
    ..add<BuiltMap<String, BuiltList<ProjectWithProblems>>>(
        ProblemsActionsNames.setProblems, _setProblems)
    ..add<void>(ProblemsActionsNames.clear, _clear);
}

void _setProblems(
  ProblemsState state,
  Action<BuiltMap<String, BuiltList<ProjectWithProblems>>> action,
  ProblemsStateBuilder builder,
) =>
    builder.problems.replace(action.payload);

void _clear(
    ProblemsState state, Action<void> action, ProblemsStateBuilder builder) {
  builder..problems.clear();
}
