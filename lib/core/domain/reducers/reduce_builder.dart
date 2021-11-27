import 'package:built_redux/built_redux.dart';
import 'package:tecon_task/core/domain/domain.dart';
import 'package:tecon_task/core/domain/reducers/domain_reducers/statistics_global_reducer.dart';
import 'package:tecon_task/features/calendar_plan/domain/calendar_plan_reducer.dart';
import 'package:tecon_task/features/chat_list/domain/chat_list_reducer.dart';
import 'package:tecon_task/features/collector_enums/domain/collector_enums_reducer.dart';
import 'package:tecon_task/features/data_offline_storage/domain/reducers/data_offline_reducers.dart';
import 'package:tecon_task/features/login_screen/domain/login_reducer.dart';
import 'package:tecon_task/features/problem_creation_screen/domain/problem_creation_reducer.dart';
import 'package:tecon_task/features/problem_details_screen/domain/problem_details_reducer.dart';
import 'package:tecon_task/features/project_info/domain/project_info_reducer.dart';
import 'package:tecon_task/features/project_list/domain/project_list_reducer.dart';
import 'package:tecon_task/features/reports/domain/reports_reducer.dart';
import 'package:tecon_task/features/statistics/domain/statistics_reducer.dart';
import 'package:tecon_task/features/statistics_system_problems/domain/domain.dart';
import 'package:tecon_task/features/task_creation/domain/task_creation_reducer.dart';
import 'package:tecon_task/features/task_details_complete_screen/domain/domain.dart';
import 'package:tecon_task/features/task_details_screen/domain/task_details_reducer.dart';
import 'package:tecon_task/features/tasks_list_screen/domain/tasks_list_reducer.dart';
import 'package:tecon_task/features/tasks_tape/domain/tasks_tape_reducer.dart';
import 'package:tecon_task/features/team_member_details/domain/team_member_details_reducer.dart';
import 'package:tecon_task/features/team_screen/domain/team_list_reducer.dart';
import 'package:tecon_task/features/team_tape/domain/team_tape_reducer.dart';
import 'package:tecon_task/features/workload_screen/domain/domain.dart';

final reducerBuilder = ReducerBuilder<AppState, AppStateBuilder>()
  ..combineNested(createCalendarPlanReducer())
  ..combineNested(createChatListReducer())
  ..combineNested(createLoginReducer())
  ..combineNested(createCollectorEnumsReducer())
  ..combineNested(createUserReducer())
  ..combineNested(createTasksReducer())
  ..combineNested(createTasksListReducer())
  ..combineNested(createTaskDetailsReducer())
  ..combineNested(createTaskDetailsCompleteReducer())
  ..combineNested(createAppStateReducer())
  ..combineNested(createTaskCreationReducer())
  ..combineNested(createEventsReducer())
  ..combineNested(createProjectsReducer())
  ..combineNested(createProjectInfoReducer())
  ..combineNested(createProjectListReducer())
  ..combineNested(createTeamReducer())
  ..combineNested(createTeamListReducer())
  ..combineNested(createTeamTapeReducer())
  ..combineNested(createTasksTapeReducer())
  ..combineNested(createTeamMemberDetailsReducer())
  ..combineNested(createAddressReducer())
  ..combineNested(createProblemsReducer())
  ..combineNested(createProblemCreationReducer())
  ..combineNested(createProblemsListReducer())
  ..combineNested(createProblemDetailsReducer())
  ..combineNested(createProblemCreationReducer())
  ..combineNested(createStatisticsReducer())
  ..combineNested(createStatisticsGlobalReducer())
  ..combineNested(createStatisticsSystemProblemsReducer())
  ..combineNested(createStatisticsSystemProblemsGlobalReducer())
  ..combineNested(createDataOfflineReducer())
  ..combineNested(createReportsReducer())
  ..combineNested(createWorkloadScreenReducer())
  ..combineNested(createWorkloadReducer());

final reducers = reducerBuilder.build();
