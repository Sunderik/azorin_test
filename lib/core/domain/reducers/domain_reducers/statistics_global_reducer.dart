import 'package:built_collection/built_collection.dart';
import 'package:built_redux/built_redux.dart';
import 'package:tecon_task/core/domain/actions/domain_actions/statistics_global_actions.dart';
import 'package:tecon_task/core/domain/domain.dart';
import 'package:tecon_task/core/domain/objects/models/statistics_group.dart';
import 'package:collection/collection.dart';

NestedReducerBuilder<AppState, AppStateBuilder, StatisticsGlobalState, StatisticsGlobalStateBuilder>
    createStatisticsGlobalReducer() {
  return NestedReducerBuilder<AppState, AppStateBuilder, StatisticsGlobalState, StatisticsGlobalStateBuilder>(
    (state) => state.statisticsGlobalState,
    (builder) => builder.statisticsGlobalState,
  )
    ..add(StatisticsGlobalActionsNames.setStatisticsProblems, _setStatisticsProblems)
    ..add(StatisticsGlobalActionsNames.setStatisticsGroups, _setStatisticsGroup)
    ..add(StatisticsGlobalActionsNames.clearGroup, _clearGroup)
    ..add(StatisticsGlobalActionsNames.clearGroups, _clearGroups)
    ..add(StatisticsGlobalActionsNames.clearStatisticsProblems, _clearStatiscticsProblems);
}

void _setStatisticsProblems(
  StatisticsGlobalState state,
  Action<BuiltMap<String, BuiltList<ProjectWithProblems>>> action,
  StatisticsGlobalStateBuilder builder,
) =>
    builder.statisticsProblems.replace(action.payload);

void _setStatisticsGroup(StatisticsGlobalState state, Action<BuiltMap<String, StatisticsGroup>> action,
    StatisticsGlobalStateBuilder builder) {
  builder.statisticsGroups.replace(action.payload);
}

void _clearGroup(StatisticsGlobalState state, Action<String> action, StatisticsGlobalStateBuilder builder) {
  final StatisticsGroup? group =
      state.statisticsGroups?.entries.firstWhereOrNull((group) => group.value.guid == action.payload)?.value;
  if (group != null) {
    final Map<String, StatisticsGroup> groups = state.statisticsGroups!.toMap();
    final Map<String, StatisticsGroup> updatedGroups = groups.map((key, value) {
      if (value.guid == group.guid) {
        return MapEntry(
            key,
            StatisticsGroup((builder) => builder
              ..allObjectsLoaded = false
              ..guid = value.guid
              ..name = value.name
              ..aSystems = null
              ..stages = null));
      } else {
        return MapEntry(key, value);
      }
    });
    builder.statisticsGroups.replace(MapBuilder<String, StatisticsGroup>(updatedGroups).build());
  }
}

void _clearGroups(StatisticsGlobalState state, Action<void> action, StatisticsGlobalStateBuilder builder) {
  builder.statisticsGroups.clear();
}

void _clearStatiscticsProblems(StatisticsGlobalState state, Action<void> action, StatisticsGlobalStateBuilder builder) {
  builder.statisticsProblems.clear();
}
