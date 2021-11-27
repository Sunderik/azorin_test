import 'package:built_redux/built_redux.dart';
import 'package:tecon_task/core/domain/domain.dart';

///features actions
import 'package:tecon_task/features/address/address.dart';
import 'package:tecon_task/features/calendar_plan/domain/actions/calendar_plan_actions.dart';
import 'package:tecon_task/features/chat_list/domain/actions/chat_list_actions.dart';
import 'package:tecon_task/features/collector_enums/domain/actions/collector_enums_actions.dart';
import 'package:tecon_task/features/data_offline_storage/domain/actions/data_offline_actions.dart';
import 'package:tecon_task/features/login_screen/login_screen.dart';
import 'package:tecon_task/features/navigation/navigation.dart';
import 'package:tecon_task/features/problem_creation_screen/problem_creation_screen.dart';
import 'package:tecon_task/features/problem_details_screen/problem_details_screen.dart';
import 'package:tecon_task/features/problems_list_screen/problems_list_screen.dart';
import 'package:tecon_task/features/project_info/project_info.dart';
import 'package:tecon_task/features/project_list/project_list.dart';
import 'package:tecon_task/features/reports/domain/actions/actions.dart';
import 'package:tecon_task/features/settings/domain/actions/settings_actions.dart';
import 'package:tecon_task/features/statistics/domain/actions/statistics_actions.dart';
import 'package:tecon_task/features/statistics_system_problems/domain/actions/actions.dart';
import 'package:tecon_task/features/task_creation/domain/actions/task_creation_actions.dart';
import 'package:tecon_task/features/task_details_cancel_screen/task_details_cancel_screen.dart';
import 'package:tecon_task/features/task_details_complete_screen/domain/domain.dart';
import 'package:tecon_task/features/task_details_screen/task_details_screen.dart';
import 'package:tecon_task/features/tasks_list_screen/tasks_list_screen.dart';
import 'package:tecon_task/features/tasks_tape/domain/actions/tasks_tape_actions.dart';
import 'package:tecon_task/features/team_member_details/domain/actions/team_member_details_actions.dart';
import 'package:tecon_task/features/team_screen/domain/actions/team_list_actions.dart';
import 'package:tecon_task/features/team_tape/domain/actions/team_tape_actions.dart';
import 'package:tecon_task/features/workload_screen/workload_screen.dart';

part 'app_actions.g.dart';

abstract class AppActions extends ReduxActions {
  AppActions._();

  factory AppActions() => _$AppActions();

  //action to clear state
  late ActionDispatcher<void> clearState;

  late ActionDispatcher<void> setTheme;

  late ActionDispatcher<bool> changeOfflineMode;

  DataOfflineActions get dataOfflineActions;

  NavigationActions get navigation;

  LoginActions get login;

  CollectorEnumsActions get collectorEnumsActions;

  TeamActions get team;

  TeamListActions get teamListActions;

  TeamTapeActions get teamTapeActions;

  TasksTapeActions get tasksTapeActions;

  TeamMemberDetailsActions get teamMemberDetailsActions;

  UserActions get user;

  TasksActions get tasks;

  TasksListActions get tasksListActions;

  TaskCreationActions get taskCreation;

  TaskDetailsActions get taskDetailsActions;

  TaskDetailsCompleteActions get taskDetailsCompleteActions;

  TaskDetailsCancelActions get taskDetailsCancelActions;

  EventsActions get eventsActions;

  ProjectListActions get projectListActions;

  ProjectsActions get projectsActions;

  ProjectInfoActions get projectInfoActions;

  AddressAppActions get addressAppActions;

  AddressActions get addressActions;

  ProblemsActions get problems;

  ProblemsListActions get problemsList;

  ProblemCreationActions get problemCreationActions;

  ProblemDetailsActions get problemDetailsActions;

  SettingsActions get settingsActions;

  StatisticsActions get statisticsActions;

  StatisticsGlobalActions get statisticsGlobalActions;

  StatisticsSystemProblemsActions get statisticsSystemProblemsActions;

  StatisticsSystemProblemsGlobalActions get statisticsSystemProblemsGlobalActions;

  ReportsActions get reportsActions;

  ChatListActions get chatListActions;

  CalendarPlanActions get calendarPlanActions;

  WorkloadScreenActions get workloadScreenActions;

  WorkloadActions get workloadActions;
}
