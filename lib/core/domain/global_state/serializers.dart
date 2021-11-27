import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:tecon_task/core/domain/domain.dart';
import 'package:tecon_task/core/domain/global_state/app_state.dart';
import 'package:tecon_task/core/domain/global_state/domain_states/statistics_global_state.dart';
import 'package:tecon_task/core/domain/global_state/domain_states/statistics_system_problems_global_state.dart';
import 'package:tecon_task/core/domain/objects/models.dart';
import 'package:tecon_task/core/domain/objects/models/collector_enums.dart';
import 'package:tecon_task/core/domain/objects/models/project_section.dart';
import 'package:tecon_task/core/domain/objects/models/task_design.dart';
import 'package:tecon_task/features/chat_list/domain/chat_list_state.dart';
import 'package:tecon_task/features/data_offline_storage/data/day_with_tasks_api.dart';
import 'package:tecon_task/features/data_offline_storage/data/offline_data.dart';
import 'package:tecon_task/features/data_offline_storage/data/offline_project.dart';
import 'package:tecon_task/features/data_offline_storage/domain/domain.dart';
import 'package:tecon_task/features/login_screen/domain/login_state.dart';
import 'package:tecon_task/features/navigation/domain/navigaion_state.dart';
import 'package:tecon_task/features/problem_details_screen/domain/problem_details_state.dart';
import 'package:tecon_task/features/problems_list_screen/domain/domain.dart';
import 'package:tecon_task/features/project_info/domain/project_info_state.dart';
import 'package:tecon_task/features/project_list/domain/project_list_state.dart';
import 'package:tecon_task/features/statistics/domain/statistics_state.dart';
import 'package:tecon_task/features/statistics_system_problems/domain/statistics_system_problems_state.dart';
import 'package:tecon_task/features/task_creation/domain/task_creation_state.dart';
import 'package:tecon_task/features/task_details_screen/data/data.dart';
import 'package:tecon_task/features/task_details_screen/domain/task_details_state.dart';
import 'package:tecon_task/features/tasks_list_screen/domain/tasks_list_state.dart';
import 'package:tecon_task/features/tasks_tape/domain/tasks_tape_state.dart';
import 'package:tecon_task/features/team_screen/domain/team_list_state.dart';
import 'package:tecon_task/features/team_tape/domain/team_tape_state.dart';

part 'serializers.g.dart';

@SerializersFor([
  Employee,
  Project,
  ProjectSection,
  AppState,
  UserState,
  LoginState,
  TeamState,
  TeamListState,
  TeamTapeState,
  TasksTapeState,
  TeamMemberDetailsState,
  NavigationState,
  TasksState,
  TasksListState,
  TaskDetailsState,
  DayWithTasks,
  TaskCreationState,
  ProjectsState,
  ProjectListState,
  ProjectInfoState,
  EventsState,
  TaskDetails,
  ProblemsState,
  ProblemsListState,
  ProblemDetailsState,
  ProjectWithProblems,
  StatisticsState,
  StatisticsGlobalState,
  StatisticsSystemProblemsState,
  StatisticsSystemProblemsGlobalState,
  ReportsState,
  CalendarPlanState,
  CurrentUser,
  DataOfflineState,
  ChatListState,
  Day,
  SubTask,
  TaskDesign,
  CollectorEnums,
  CommonEnum,
  CommonEnumItem,
  Coordinates,
  HistoryItem,
  UserRole,
  Message,
  MaterialModel,
  CadCategory,
  Permissions,
  AccessPermissions,
  ActionPermissions,
  AvailableActions,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(DateTimeSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();
