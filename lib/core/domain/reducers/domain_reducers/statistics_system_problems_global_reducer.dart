import 'package:built_collection/built_collection.dart';
import 'package:built_redux/built_redux.dart';
import 'package:tecon_task/core/domain/domain.dart';

NestedReducerBuilder<
        AppState,
        AppStateBuilder,
        StatisticsSystemProblemsGlobalState,
        StatisticsSystemProblemsGlobalStateBuilder>
    createStatisticsSystemProblemsGlobalReducer() {
  return NestedReducerBuilder<
      AppState,
      AppStateBuilder,
      StatisticsSystemProblemsGlobalState,
      StatisticsSystemProblemsGlobalStateBuilder>(
    (state) => state.statisticsSystemProblemsGlobalState,
    (builder) => builder.statisticsSystemProblemsGlobalState,
  )
    ..add(
        StatisticsSystemProblemsGlobalActionsNames.setStatisticsSystemProblems,
        _setStatisticsSystemProblems)
    ..add(
        StatisticsSystemProblemsGlobalActionsNames
            .clearStatisticsSystemProblems,
        _clearStatisticsSystemProblems);
}

void _setStatisticsSystemProblems(
  StatisticsSystemProblemsGlobalState state,
  Action<BuiltMap<String, BuiltList<ProjectWithProblems>>> action,
  StatisticsSystemProblemsGlobalStateBuilder builder,
) =>
    builder.statisticsSystemProblems.replace(action.payload);

void _clearStatisticsSystemProblems(
  StatisticsSystemProblemsGlobalState state,
  Action<void> action,
  StatisticsSystemProblemsGlobalStateBuilder builder,
) =>
    builder.statisticsSystemProblems.clear();
