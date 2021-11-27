import 'package:built_redux/built_redux.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/features/address/domain/middlewares/address_middleware.dart';
import 'package:tecon_task/features/address/domain/middlewares/epics/address_epic.dart';
import 'package:tecon_task/features/calendar_plan/calendar_plan.dart';
import 'package:tecon_task/features/calendar_plan/domain/middlewares/epic/epic.dart';
import 'package:tecon_task/features/chat_list/domain/middlewares/middlewares.dart';
import 'package:tecon_task/features/collector_enums/domain/middlewares/epics/collector_enums_epic.dart';
import 'package:tecon_task/features/collector_enums/domain/middlewares/middlewares.dart';
import 'package:tecon_task/features/data_offline_storage/domain/middlewares/data_offline_middleware.dart';
import 'package:tecon_task/features/data_offline_storage/domain/middlewares/epics/data_offline_epic.dart';
import 'package:tecon_task/features/login_screen/domain/middlewares/epics/login_epic.dart';
import 'package:tecon_task/features/login_screen/domain/middlewares/login_middleware.dart';
import 'package:tecon_task/features/navigation/domain/middlewares/dialog_middleware.dart';
import 'package:tecon_task/features/navigation/domain/middlewares/notification_middleware.dart';
import 'package:tecon_task/features/navigation/navigation.dart';
import 'package:tecon_task/features/problem_creation_screen/domain/middlewares/epic/problem_creation_epic.dart';
import 'package:tecon_task/features/problem_creation_screen/domain/middlewares/problem_creation_middleware.dart';
import 'package:tecon_task/features/problem_details_screen/domain/middlewares/epics/problem_details_epic.dart';
import 'package:tecon_task/features/problem_details_screen/domain/middlewares/problem_details_middleware.dart';
import 'package:tecon_task/features/problems_list_screen/domain/domain.dart';
import 'package:tecon_task/features/project_info/domain/domain.dart';
import 'package:tecon_task/features/project_list/domain/middlewares/epic/project_list_epic.dart';
import 'package:tecon_task/features/project_list/domain/middlewares/project_list_middleware.dart';
import 'package:tecon_task/features/reports/domain/domain.dart';
import 'package:tecon_task/features/settings/domain/middleware/epics/settings_epic.dart';
import 'package:tecon_task/features/settings/domain/middleware/settings_middleware.dart';
import 'package:tecon_task/features/statistics/domain/middlewares/epic/statistics_epic.dart';
import 'package:tecon_task/features/statistics/domain/middlewares/statistics_middleware.dart';
import 'package:tecon_task/features/statistics_system_problems/domain/domain.dart';
import 'package:tecon_task/features/task_creation/domain/middlewares/epic/task_creation_epic.dart';
import 'package:tecon_task/features/task_creation/domain/middlewares/task_creation_middleware.dart';
import 'package:tecon_task/features/task_details_cancel_screen/domain/middlewares/epic/task_details_cancel_epic.dart';
import 'package:tecon_task/features/task_details_cancel_screen/domain/middlewares/task_details_cancel_middleware.dart';
import 'package:tecon_task/features/task_details_complete_screen/domain/domain.dart';
import 'package:tecon_task/features/task_details_screen/domain/middlewares/epic/task_details_epic.dart';
import 'package:tecon_task/features/task_details_screen/domain/middlewares/task_details_middleware.dart';
import 'package:tecon_task/features/tasks_list_screen/domain/middlewares/epics/task_list_calendar_plan_epic.dart';
import 'package:tecon_task/features/tasks_list_screen/domain/middlewares/epics/tasks_list_epic.dart';
import 'package:tecon_task/features/tasks_list_screen/domain/middlewares/tasks_list_middleware.dart';
import 'package:tecon_task/features/tasks_tape/domain/middlewares/epics/tasks_tape_epic.dart';
import 'package:tecon_task/features/tasks_tape/domain/middlewares/tasks_tape_middleware.dart';
import 'package:tecon_task/features/team_member_details/domain/middlewares/epic/team_member_details_epic.dart';
import 'package:tecon_task/features/team_member_details/domain/middlewares/team_member_details_middleware.dart';
import 'package:tecon_task/features/team_screen/domain/middlewares/epics/team_epic.dart';
import 'package:tecon_task/features/team_screen/domain/middlewares/team_middleware.dart';
import 'package:tecon_task/features/team_tape/domain/middlewares/epics/team_tape_epic.dart';
import 'package:tecon_task/features/team_tape/domain/middlewares/team_tape_middleware.dart';
import 'package:tecon_task/features/workload_screen/workload_screen.dart';
import 'package:tecon_task/injection.dart';

final _calendarPlanEpic = injector.get<CalendarPlanEpic>();
final _chatListEpic = injector.get<ChatListEpic>();
final _loginEpic = injector.get<LoginEpic>();
final _collectorEnumsEpic = injector.get<CollectorEnumsEpic>();
final _teamEpic = injector.get<TeamEpic>();
final _teamTapeEpic = injector.get<TeamTapeEpic>();
final _teamMemberDetailsEpic = injector.get<TeamMemberDetailsEpic>();
final _tasksListEpic = injector.get<TasksListEpic>();
final _taskCreationEpic = injector.get<TaskCreationEpic>();
final _taskDetailsEpic = injector.get<TaskDetailsEpic>();
final _taskDetailsCancelEpic = injector.get<TaskDetailsCancelEpic>();
final _taskDetailsCompleteEpic = injector.get<TaskDetailsCompleteEpic>();
final _projectListEpic = injector.get<ProjectListEpic>();
final _projectInfoEpic = injector.get<ProjectInfoEpic>();
final _projectSectionInfoEpic = injector.get<ProjectSectionInfoEpic>();
final _projectInfoStatusEpic = injector.get<ProjectInfoStatusEpic>();
final _projectInfoMailEpic = injector.get<ProjectInfoMailEpic>();
final _addressEpic = injector.get<AddressEpic>();
final _taskListCalendarPlanEpic = injector.get<TaskListCalendarPlanEpic>();
final _problemsListEpic = injector.get<ProblemsListEpic>();
final _problemCreationEpic = injector.get<ProblemCreationEpic>();
final _problemDetailsEpic = injector.get<ProblemDetailsEpic>();
final _tasksTapeEpic = injector.get<TasksTapeEpic>();
final _settingsEpic = injector.get<SettingsEpic>();
final _dataOfflineEpic = injector.get<DataOfflineEpic>();
final _statisticsEpic = injector.get<StatisticsEpic>();
final _statisticsSystemProblemsEpic = injector.get<StatisticsSystemProblemsEpic>();
final _reportsEpic = injector.get<ReportsEpic>();
final _workloadScreenEpic = injector.get<WorkloadScreenEpic>();

final List<
    void Function(Action<dynamic>) Function(void Function(Action<dynamic>)) Function(
        MiddlewareApi<AppState, AppStateBuilder, AppActions>)> middlewares = [
  navigationMiddleware().build(),
  notificationMiddleware().build(),
  dialogMiddleware().build(),
  calendarPlanMiddleware().build(),
  chatListMiddleware().build(),
  loginMiddleware().build(),
  collectorEnumsMiddleware().build(),
  teamMiddleware().build(),
  teamTapeMiddleware().build(),
  teamMemberDetailsMiddleware().build(),
  tasksListMiddleware().build(),
  taskCreationMiddleware().build(),
  taskDetailsMiddleware().build(),
  taskDetailsCancelMiddleware().build(),
  taskDetailsCompleteMiddleware().build(),
  projectListMiddleware().build(),
  projectInfoMiddleware().build(),
  addressMiddleware().build(),
  problemsListMiddleware().build(),
  problemCreationMiddleware().build(),
  problemDetailsMiddleware().build(),
  tasksTapeMiddleware().build(),
  dataOfflineMiddleware().build(),
  settingsMiddleware().build(),
  statisticsMiddleware().build(),
  statisticsSystemProblemsMiddleware().build(),
  reportsMiddleware().build(),
  workloadScreenMiddleware().build(),
  createEpicMiddleware([
    _calendarPlanEpic.calendarPlanEpic,
    _chatListEpic.chatListEpic,
    _loginEpic.loginEpic,
    _collectorEnumsEpic.collectorEnumsEpic,
    _tasksListEpic.taskListEpic,
    _tasksListEpic.taskDesignListEpic,
    _tasksListEpic.taskListSearchEpic,
    _tasksListEpic.taskListSearchDesignEpic,
    _tasksListEpic.tasksInWorkEpic,
    _taskListCalendarPlanEpic.calendarPlanEpic,
    _teamEpic.teamMemberStatusEpic,
    _teamEpic.executorsEpic,
    _teamTapeEpic.teamTapeEpic,
    _teamMemberDetailsEpic.teamExecutorInfoEpic,
    _teamMemberDetailsEpic.teamExecutorInfoStatusEpic,
    _teamMemberDetailsEpic.teamMemberInfoEpic,
    _teamMemberDetailsEpic.teamMemberDesignEngineerDetailsEpic,
    _taskCreationEpic.projectMaterialsEpic,
    _taskCreationEpic.taskCreationExecutorsEpic,
    _taskCreationEpic.cadCategoriesEpic,
    _taskCreationEpic.cadMaterialsEpic,
    _taskCreationEpic.taskCreationEpic,
    _taskCreationEpic.tasksCatalogEpic,
    _taskCreationEpic.taskFromCatalogEpic,
    _taskCreationEpic.taskCreationServiceEpic,
    _taskDetailsEpic.taskDetailsEpic,
    _taskDetailsEpic.taskDetailsDesignEpic,
    _taskDetailsEpic.taskInWorkEpic,
    _taskDetailsEpic.taskInWorkDesignEpic,
    _taskDetailsEpic.taskSetStatusDesignEpic,
    _taskDetailsEpic.taskCompleteEpic,
    _taskDetailsEpic.taskCommentEpic,
    _taskDetailsEpic.taskImageEpic,
    _taskDetailsEpic.taskFileEpic,
    _taskDetailsEpic.taskDownloadFileEpic,
    _taskDetailsEpic.taskHistoryEpic,
    _taskDetailsEpic.materialsEpic,
    _taskDetailsEpic.cadCategoriesEpic,
    _taskDetailsEpic.cadMaterialsEpic,
    _taskDetailsEpic.taskDetailsMaterialEpic,
    _taskDetailsCancelEpic.taskCancelEpic,
    _taskDetailsCancelEpic.taskDesignCancelEpic,
    _taskDetailsCompleteEpic.cadCategoryObjectsEpic,
    _taskDetailsCompleteEpic.taskDetailsCompleteEpic,
    _projectListEpic.projectListEpic,
    _projectInfoEpic.projectInfoEpic,
    _projectSectionInfoEpic.projectSectionInfoEpic,
    _projectInfoStatusEpic.projectInfoStatusEpic,
    _projectInfoMailEpic.projectInfoMailEpic,
    _addressEpic.addressEpic,
    _addressEpic.launchInstanceEpic,
    _problemsListEpic.problemsListEpic,
    _problemsListEpic.problemsListSpecEpic,
    _problemsListEpic.problemsTypeListEpic,
    _problemsListEpic.problemsTypeListDesignEpic,
    _problemCreationEpic.problemCreationEpic,
    _problemCreationEpic.problemEditEpic,
    _problemDetailsEpic.problemDetailsEpic,
    _problemDetailsEpic.problemHistoryEpic,
    _problemDetailsEpic.problemDetailsStatusEpic,
    _problemDetailsEpic.problemDetailsTypeEpic,
    _problemDetailsEpic.problemDetailsCommentEpic,
    _problemDetailsEpic.problemDetailsImageEpic,
    _problemDetailsEpic.problemDetailsFileEpic,
    _problemDetailsEpic.sendProblemCardEpic,
    _problemDetailsEpic.downloadProblemCardEpic,
    _problemDetailsEpic.problemDetailsChatStatusEpic,
    _problemDetailsEpic.problemDetailsChatMessagesEpic,
    _problemDetailsEpic.problemDetailsChatSendMessageEpic,
    _problemDetailsEpic.problemDetailsDownloadFileEpic,
    _tasksTapeEpic.tasksTapeEpic,
    _tasksTapeEpic.tasksTapeDownloadFileEpic,
    _dataOfflineEpic.dataOfflineEpic,
    _settingsEpic.settingsEpic,
    _statisticsEpic.statisticsGroupsEpic,
    _statisticsEpic.statisticsSystemsEpic,
    _statisticsEpic.statisticsStagesEpic,
    _statisticsEpic.statisticsProblemsEpic,
    _statisticsEpic.statisticsProblemsDesignEpic,
    _statisticsSystemProblemsEpic.statisticsSystemProblemsEpic,
    _statisticsSystemProblemsEpic.statisticsStageProblemsEpic,
    _statisticsSystemProblemsEpic.problemsCountsEpic,
    _reportsEpic.projectNamesEpic,
    _reportsEpic.employeeNamesEpic,
    _reportsEpic.sendReportEpic,
    _reportsEpic.downloadReportEpic,
    _workloadScreenEpic.branchesEpic,
    _workloadScreenEpic.divisionsWorkload,
  ]),
];
