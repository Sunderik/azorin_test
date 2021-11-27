import 'package:built_collection/built_collection.dart';
import 'package:built_redux/built_redux.dart';
import 'package:tecon_task/core/domain/domain.dart';

NestedReducerBuilder<AppState, AppStateBuilder, TasksState, TasksStateBuilder> createTasksReducer() {
  return NestedReducerBuilder<AppState, AppStateBuilder, TasksState, TasksStateBuilder>(
    (state) => state.tasksState,
    (builder) => builder.tasksState,
  )
    ..add<BuiltList<DayWithTasks>>(TasksActionsNames.setNewTasks, _setNewTasks)
    ..add<BuiltList<DayWithTasks>>(TasksActionsNames.setInWorkTasks, _setInWorkTasks)
    ..add<BuiltList<DayWithTasks>>(TasksActionsNames.setCompletedTasks, _setCompletedTasks)
    ..add<BuiltList<MonthWithProjects>>(TasksActionsNames.setActualMonths, _setActualMonths)
    ..add<BuiltList<MonthWithProjects>>(TasksActionsNames.setCompletedMonths, _setCompletedMonths)
    ..add<BuiltList<MonthWithProjects>>(TasksActionsNames.setAllMonths, _setAllMonths)
    ..add<void>(TasksActionsNames.clear, _clear);
}

void _setNewTasks(
  TasksState state,
  Action<BuiltList<DayWithTasks>> action,
  TasksStateBuilder builder,
) =>
    builder.newTasks.replace(action.payload);

void _setInWorkTasks(
  TasksState state,
  Action<BuiltList<DayWithTasks>> action,
  TasksStateBuilder builder,
) =>
    builder.inWorkTasks.replace(action.payload);

void _setCompletedTasks(
  TasksState state,
  Action<BuiltList<DayWithTasks>> action,
  TasksStateBuilder builder,
) =>
    builder.completedTasks.replace(action.payload);

void _setActualMonths(
  TasksState state,
  Action<BuiltList<MonthWithProjects>> action,
  TasksStateBuilder builder,
) =>
    builder.monthsWithProjectsActual.replace(action.payload);

void _setCompletedMonths(
  TasksState state,
  Action<BuiltList<MonthWithProjects>> action,
  TasksStateBuilder builder,
) =>
    builder.monthsWithProjectsCompleted.replace(action.payload);

void _setAllMonths(
  TasksState state,
  Action<BuiltList<MonthWithProjects>> action,
  TasksStateBuilder builder,
) =>
    builder.monthsWithProjectsAll.replace(action.payload);

void _clear(TasksState state, Action<void> action, TasksStateBuilder builder) {
  builder
    ..newTasks.clear()
    ..completedTasks.clear()
    ..inWorkTasks.clear()
    ..monthsWithProjectsActual.clear()
    ..monthsWithProjectsCompleted.clear()
    ..monthsWithProjectsAll.clear();
}
