// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_actions.dart';

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$AppActions extends AppActions {
  factory _$AppActions() => _$AppActions._();
  _$AppActions._() : super._();

  final clearState = ActionDispatcher<void>('AppActions-clearState');
  final setTheme = ActionDispatcher<void>('AppActions-setTheme');
  final changeOfflineMode =
      ActionDispatcher<bool>('AppActions-changeOfflineMode');

  final dataOfflineActions = DataOfflineActions();
  final navigation = NavigationActions();
  final login = LoginActions();
  final collectorEnumsActions = CollectorEnumsActions();
  final team = TeamActions();
  final teamListActions = TeamListActions();
  final teamTapeActions = TeamTapeActions();
  final tasksTapeActions = TasksTapeActions();
  final teamMemberDetailsActions = TeamMemberDetailsActions();
  final user = UserActions();
  final tasks = TasksActions();
  final tasksListActions = TasksListActions();
  final taskCreation = TaskCreationActions();
  final taskDetailsActions = TaskDetailsActions();
  final taskDetailsCompleteActions = TaskDetailsCompleteActions();
  final taskDetailsCancelActions = TaskDetailsCancelActions();
  final eventsActions = EventsActions();
  final projectListActions = ProjectListActions();
  final projectsActions = ProjectsActions();
  final projectInfoActions = ProjectInfoActions();
  final addressAppActions = AddressAppActions();
  final addressActions = AddressActions();
  final problems = ProblemsActions();
  final problemsList = ProblemsListActions();
  final problemCreationActions = ProblemCreationActions();
  final problemDetailsActions = ProblemDetailsActions();
  final settingsActions = SettingsActions();
  final statisticsActions = StatisticsActions();
  final statisticsGlobalActions = StatisticsGlobalActions();
  final statisticsSystemProblemsActions = StatisticsSystemProblemsActions();
  final statisticsSystemProblemsGlobalActions =
      StatisticsSystemProblemsGlobalActions();
  final reportsActions = ReportsActions();
  final chatListActions = ChatListActions();
  final calendarPlanActions = CalendarPlanActions();
  final workloadScreenActions = WorkloadScreenActions();
  final workloadActions = WorkloadActions();
  @override
  void setDispatcher(Dispatcher dispatcher) {
    clearState.setDispatcher(dispatcher);
    setTheme.setDispatcher(dispatcher);
    changeOfflineMode.setDispatcher(dispatcher);

    dataOfflineActions.setDispatcher(dispatcher);
    navigation.setDispatcher(dispatcher);
    login.setDispatcher(dispatcher);
    collectorEnumsActions.setDispatcher(dispatcher);
    team.setDispatcher(dispatcher);
    teamListActions.setDispatcher(dispatcher);
    teamTapeActions.setDispatcher(dispatcher);
    tasksTapeActions.setDispatcher(dispatcher);
    teamMemberDetailsActions.setDispatcher(dispatcher);
    user.setDispatcher(dispatcher);
    tasks.setDispatcher(dispatcher);
    tasksListActions.setDispatcher(dispatcher);
    taskCreation.setDispatcher(dispatcher);
    taskDetailsActions.setDispatcher(dispatcher);
    taskDetailsCompleteActions.setDispatcher(dispatcher);
    taskDetailsCancelActions.setDispatcher(dispatcher);
    eventsActions.setDispatcher(dispatcher);
    projectListActions.setDispatcher(dispatcher);
    projectsActions.setDispatcher(dispatcher);
    projectInfoActions.setDispatcher(dispatcher);
    addressAppActions.setDispatcher(dispatcher);
    addressActions.setDispatcher(dispatcher);
    problems.setDispatcher(dispatcher);
    problemsList.setDispatcher(dispatcher);
    problemCreationActions.setDispatcher(dispatcher);
    problemDetailsActions.setDispatcher(dispatcher);
    settingsActions.setDispatcher(dispatcher);
    statisticsActions.setDispatcher(dispatcher);
    statisticsGlobalActions.setDispatcher(dispatcher);
    statisticsSystemProblemsActions.setDispatcher(dispatcher);
    statisticsSystemProblemsGlobalActions.setDispatcher(dispatcher);
    reportsActions.setDispatcher(dispatcher);
    chatListActions.setDispatcher(dispatcher);
    calendarPlanActions.setDispatcher(dispatcher);
    workloadScreenActions.setDispatcher(dispatcher);
    workloadActions.setDispatcher(dispatcher);
  }
}

class AppActionsNames {
  static final clearState = ActionName<void>('AppActions-clearState');
  static final setTheme = ActionName<void>('AppActions-setTheme');
  static final changeOfflineMode =
      ActionName<bool>('AppActions-changeOfflineMode');
}
