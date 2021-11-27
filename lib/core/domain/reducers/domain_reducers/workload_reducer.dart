import 'package:built_collection/src/map.dart';
import 'package:built_redux/built_redux.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/features/logger/logger.dart';
import 'package:collection/collection.dart';

NestedReducerBuilder<AppState, AppStateBuilder, WorkloadState, WorkloadStateBuilder> createWorkloadReducer() {
  return NestedReducerBuilder<AppState, AppStateBuilder, WorkloadState, WorkloadStateBuilder>(
    (state) => state.workloadState,
    (builder) => builder.workloadState,
  )
    ..add(WorkloadActionsNames.clearBranches, _clearBranches)
    ..add(WorkloadActionsNames.clearBranch, _clearBranch)
    ..add(WorkloadActionsNames.setBranches, _setBranches);
}

void _clearBranches(WorkloadState state, Action<void> action, WorkloadStateBuilder builder) {
  builder.workloadBranches = null;
}

void _clearBranch(WorkloadState state, Action<String> action, WorkloadStateBuilder builder) {
  final guidOfBranchToClear = action.payload;

  /// Получаем существующую мапу филиалов
  final Map<SimpleType, BranchWorkload>? exWorkloadBranches = state.workloadBranches?.toMap();
  if (exWorkloadBranches == null) {
    logger.e('exBranches is null in _clearBranch');
    return;
  }

  /// Получаем объект филиала
  final key = exWorkloadBranches.keys.firstWhereOrNull((element) => element.guid == guidOfBranchToClear);
  if (key == null) {
    logger.e('key is null in _clearBranch');
    return;
  }

  /// Определяем обновленную мапу филиалов
  final Map<SimpleType, BranchWorkload> updatedWorkloadBranches = exWorkloadBranches.map((key, value) {
    if (key.guid == guidOfBranchToClear) {
      return MapEntry(
          key,
          BranchWorkload((builder) => builder
            ..allObjectsLoaded = false
            ..divisions = null));
    } else {
      return MapEntry(key, value);
    }
  });

  builder.workloadBranches.replace(MapBuilder<SimpleType, BranchWorkload>(updatedWorkloadBranches).build());
}

void _setBranches(
    WorkloadState state, Action<BuiltMap<SimpleType, BranchWorkload>> action, WorkloadStateBuilder builder) {
  builder.workloadBranches.replace(action.payload);
}
