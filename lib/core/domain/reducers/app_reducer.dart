import 'package:built_redux/built_redux.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/core/domain/global_state/domain_states/team_state.dart';
import 'package:tecon_task/core/services/requests_upload_service.dart';
import 'package:tecon_task/features/collector_enums/domain/collector_enums_state.dart';
import 'package:tecon_task/features/data_offline_storage/domain/data_offline_state.dart';
import 'package:tecon_task/features/logger/logger.dart';
import 'package:tecon_task/features/login_screen/domain/login_state.dart';
import 'package:tecon_task/features/problem_creation_screen/domain/problem_creation_state.dart';
import 'package:tecon_task/features/problem_details_screen/domain/problem_details_state.dart';
import 'package:tecon_task/features/project_info/domain/project_info_state.dart';
import 'package:tecon_task/features/project_list/domain/project_list_state.dart';
import 'package:tecon_task/features/task_creation/domain/task_creation_state.dart';
import 'package:tecon_task/features/task_details_complete_screen/domain/domain.dart';
import 'package:tecon_task/features/task_details_screen/domain/task_details_state.dart';
import 'package:tecon_task/features/tasks_list_screen/domain/tasks_list_state.dart';
import 'package:tecon_task/features/tasks_tape/domain/tasks_tape_state.dart';
import 'package:tecon_task/features/team_member_details/domain/team_member_details_state.dart';
import 'package:tecon_task/features/team_screen/domain/team_list_state.dart';
import 'package:tecon_task/features/team_tape/domain/team_tape_state.dart';
import 'package:tecon_task/injection.dart';

NestedReducerBuilder<AppState, AppStateBuilder, AppState, AppStateBuilder> createAppStateReducer() {
  return NestedReducerBuilder<AppState, AppStateBuilder, AppState, AppStateBuilder>(
    (state) => state,
    (builder) => builder,
  )
    ..add(AppActionsNames.clearState, _clearAppState)
    ..add(AppActionsNames.setTheme, _setTheme)
    ..add(AppActionsNames.changeOfflineMode, _changeOfflineMode);
}

void _clearAppState(AppState state, Action<void> action, AppStateBuilder builder) {
  builder
    ..calendarPlanState = CalendarPlanState().toBuilder()
    ..chatListState = ChatListState().toBuilder()
    ..loginState = LoginState().toBuilder()
    ..collectorEnumsState = CollectorEnumsState().toBuilder()
    ..teamState = TeamState().toBuilder()
    ..userState = UserState().toBuilder()
    ..teamMemberDetailsState = TeamMemberDetailsState().toBuilder()
    ..teamListState = TeamListState().toBuilder()
    ..teamTapeState = TeamTapeState().toBuilder()
    ..tasksState = TasksState().toBuilder()
    ..tasksListState = TasksListState().toBuilder()
    ..taskCreationState = TaskCreationState().toBuilder()
    ..taskDetailsState = TaskDetailsState().toBuilder()
    ..taskDetailsCompleteState = TaskDetailsCompleteState().toBuilder()
    ..eventsState = EventsState().toBuilder()
    ..projectsState = ProjectsState().toBuilder()
    ..projectInfoState = ProjectInfoState().toBuilder()
    ..projectListState = ProjectListState().toBuilder()
    ..addressState = AddressState().toBuilder()
    ..problemsState = ProblemsState().toBuilder()
    ..problemDetailsState = ProblemDetailsState().toBuilder()
    ..problemCreationState = ProblemCreationState().toBuilder()
    ..tasksTapeState = TasksTapeState().toBuilder()
    ..statisticsState = StatisticsState().toBuilder()
    ..statisticsGlobalState = StatisticsGlobalState().toBuilder()
    ..dataOfflineState = DataOfflineState().toBuilder()
    ..statisticsSystemProblemsState = StatisticsSystemProblemsState().toBuilder()
    ..statisticsSystemProblemsGlobalState = StatisticsSystemProblemsGlobalState().toBuilder()
    ..reportsState = ReportsState().toBuilder()
    ..workloadScreenState = WorkloadScreenState().toBuilder()
    ..workloadState = WorkloadState().toBuilder();
}

void _setTheme(AppState state, Action<void> action, AppStateBuilder builder) {
  logger.i("SETTING THEME");
}

void _changeOfflineMode(AppState state, Action<bool> action, AppStateBuilder builder) {
  if (builder.isOfflineMode != action.payload) {
    builder.isOfflineMode = action.payload;
    if (!action.payload && state.userState.currentUser != null) {
      ShowSnackBar.showInfoSnackBar(message: 'Интернет появился.');
      injector.get<RequestsUploadService>().sendRequestForeground();
    }
  }
}
