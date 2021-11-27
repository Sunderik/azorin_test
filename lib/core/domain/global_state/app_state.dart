import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/features/collector_enums/domain/collector_enums_state.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  AppState._();

  factory AppState([void Function(AppStateBuilder)? updates]) {
    return _$AppState((b) => b
      ..appTheme = AppTheme.light
      ..navigationState = NavigationState((builder) => builder).toBuilder()
      ..loginState = LoginState((b) => b..loginScreenStatus = LoginScreenStatus.wait).toBuilder()
      ..collectorEnumsState = CollectorEnumsState().toBuilder()
      ..dataOfflineState = DataOfflineState().toBuilder()
      ..userState = UserState().toBuilder()
      ..teamState = TeamState().toBuilder()
      ..teamMemberDetailsState = TeamMemberDetailsState().toBuilder()
      ..teamListState = TeamListState().toBuilder()
      ..userState = UserState().toBuilder()
      ..tasksState = TasksState().toBuilder()
      ..tasksListState = TasksListState().toBuilder()
      ..taskCreationState = TaskCreationState().toBuilder()
      ..taskDetailsState = TaskDetailsState().toBuilder()
      ..taskDetailsCompleteState = TaskDetailsCompleteState().toBuilder()
      ..eventsState = EventsState().toBuilder()
      ..projectsState = ProjectsState().toBuilder()
      ..projectListState = ProjectListState().toBuilder()
      ..projectInfoState = ProjectInfoState().toBuilder()
      ..addressState = AddressState().toBuilder()
      ..problemCreationState = ProblemCreationState().toBuilder()
      ..problemsState = ProblemsState().toBuilder()
      ..problemsListState = ProblemsListState().toBuilder()
      ..problemDetailsState = ProblemDetailsState().toBuilder()
      ..tasksTapeState = TasksTapeState().toBuilder()
      ..statisticsState = StatisticsState().toBuilder()
      ..statisticsGlobalState = StatisticsGlobalState().toBuilder()
      ..statisticsSystemProblemsState = StatisticsSystemProblemsState().toBuilder()
      ..statisticsSystemProblemsGlobalState = StatisticsSystemProblemsGlobalState().toBuilder()
      ..reportsState = ReportsState().toBuilder()
      ..chatListState = ChatListState().toBuilder()
      ..calendarPlanState = CalendarPlanState().toBuilder()
      ..workloadScreenState = WorkloadScreenState().toBuilder()
      ..workloadState = WorkloadState().toBuilder()
      ..isOfflineMode = false);
  }

  AppTheme get appTheme;

  NavigationState get navigationState;

  LoginState get loginState;

  CollectorEnumsState get collectorEnumsState;

  UserState get userState;

  TasksState get tasksState;

  TasksListState get tasksListState;

  TaskCreationState get taskCreationState;

  TaskDetailsState get taskDetailsState;

  TaskDetailsCompleteState get taskDetailsCompleteState;

  ProjectsState get projectsState;

  ProjectListState get projectListState;

  ProjectInfoState get projectInfoState;

  EventsState get eventsState;

  TeamState get teamState;

  TeamTapeState get teamTapeState;

  TasksTapeState get tasksTapeState;

  AddressState get addressState;

  TeamMemberDetailsState get teamMemberDetailsState;

  TeamListState get teamListState;

  ProblemsState get problemsState;

  ProblemsListState get problemsListState;

  ProblemDetailsState get problemDetailsState;

  ProblemCreationState get problemCreationState;

  StatisticsState get statisticsState;

  StatisticsGlobalState get statisticsGlobalState;

  StatisticsSystemProblemsState get statisticsSystemProblemsState;

  StatisticsSystemProblemsGlobalState get statisticsSystemProblemsGlobalState;

  ReportsState get reportsState;

  ChatListState get chatListState;

  CalendarPlanState get calendarPlanState;

  DataOfflineState get dataOfflineState;

  WorkloadScreenState get workloadScreenState;

  WorkloadState get workloadState;

  ///True - если нет интернета, false если есть
  bool get isOfflineMode;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(AppState.serializer, this) as Map<String, dynamic>;
  }

  static AppState? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(AppState.serializer, json);
  }

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
