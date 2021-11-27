import 'package:tecon_task/environments/environments.dart';

abstract class Urls {
  static const String managerPort = '5024';

  // Используется для подключения к локальной машине
  // static const String managerUrl = '10.0.2.2:$managerPort';
  static const String prefix = 'api';
  static const String managerUrl = Environments.SERVER_URL;
  static const String auth = '/$prefix/user/auth';
  static const String pushToggle = '/$prefix/user/notifications/toggle';
  static const String collectorEnums = '/$prefix/common/directory';

  static const String managerRun = '/$prefix/manager/run';
  static const String manager = '/$prefix/manager';
  static const String updateCache = '/$prefix/manager/update';
  static const String updateInstance = '/$prefix/manager/update/instance';

  static const String team = '/$prefix/members';
  static const String member = '/$prefix/member/info';
  static const String teamMemberDesignEngineer = '/$prefix/design/user';
  static const String teamMember = '/$prefix/member';
  static const String teamMemberStatus = '/$prefix/member/setStatus'; // Изменение статуса пользователя
  static const String teamTapeRecords = '/$prefix/members/history';
  static const String teamTapeImageURL = '/$prefix/members/history/photo';

  static const String branches = '/$prefix/design/branches';
  static const String workload = '/$prefix/design/workload';

  static const String tasks = '/$prefix/tasks';
  static const String tasksDesign = '/$prefix/design/tasks';
  static const String tasksSearch = '/$prefix/tasks/find';
  static const String tasksDesignSearch = '/$prefix/design/tasks/find';
  static const String tasksCatalog = '/$prefix/design/tasks/catalog';

  static const String tasksTapeRecords = '/$prefix/tasks/history';
  static const String calendarPlan = '/$prefix/tasks/calendar';

  static const String problems = "/$prefix/problems";
  static const String problemsSpec = "/$prefix/projects/problems/specialist";
  static const String problemsSelectedByType = "/$prefix/projects/problems";
  static const String problemsSelectedByTypeDesign = "/$prefix/design/problems";
  static const String problemsCounts = '/$prefix/projects/problems/count';

  static const String problemCreate = "/$prefix/problems/create";
  static const String problemEdit = "/$prefix/problem/edit";
  static const String problemDetails = "/$prefix/problem";
  static const String problemHistory = "/$prefix/problem/history";
  static const String problemType = "/$prefix/problem/type";
  static const String problemStatus = "/$prefix/problem/status";
  static const String problemComment = "/$prefix/problem/comment";
  static const String problemImage = "/$prefix/problem/image";
  static const String problemFile = "/$prefix/problem/file";
  static const String problemChatStatus = "/$prefix/chat/status";
  static const String problemChatMessages = '/$prefix/chat/messages';
  static const String problemChatSendMessage = '/$prefix/chat/send';

  static const String taskCreate = '/$prefix/tasks/create';
  static const String taskDetails = '/$prefix/task';
  static const String taskCreateDesign = '/$prefix/design/tasks/create';
  static const String taskDetailsDesign = '/$prefix/design/task';
  static const String taskFromCatalog = '/$prefix/design/task/catalog';
  static const String taskComment = '/$prefix/task/comment';
  static const String taskImage = '/$prefix/task/image';
  static const String taskFile = '/$prefix/task/file';
  static const String taskInWork = '/$prefix/task/work';
  static const String taskInWorkDesign = '/$prefix/design/task/work';
  static const String taskDesignSetStatus = '/$prefix/design/task/status';
  static const String tasksInWork = '/$prefix/tasks/work';
  static const String taskComplete = '/$prefix/task/close';
  static const String taskCancel = '/$prefix/task/cancel';
  static const String taskDesignCancel = '/$prefix/design/task/cancel';
  static const String taskHistory = '/$prefix/task/history';
  static const String taskMaterial = '/$prefix/task/material';

  static const String projects = '/$prefix/projects';
  static const String project = '/$prefix/project';
  static const String section = '/$prefix/design/section';
  static const String projectExecutor = '/$prefix/project/executor';
  static const String projectExecutors = '/$prefix/project/executors';
  static const String projectSetStatus = '/$prefix/project/setStatus';

  static const String report = '/$prefix/projects/report';
  static const String projectNames = '/$prefix/projects/common';
  static const String employeeNames = '/$prefix/members/common';

  static const String chatList = '/$prefix/chat/list';

  static const String statisticsGroups = '/$prefix/member/groups';
  static const String statisticsSystems = '/$prefix/projects/progress/statistics';
  static const String statisticsStages = '/$prefix/design/statistics/groups';
  static const String statisticsSystemProblems = '/$prefix/projects/problems/object';
  static const String statisticsStageProblems = '/$prefix/design/problems';

  static const String cadCategories = '/$prefix/cad/categories';
  static const String cadObjects = '/$prefix/cad/objects';

  static const String imageURL = '/$prefix/image';
  static const String downloadFile = '/$prefix/file';
  static const String email = "/$prefix/common/email";
  static const String dataOffline = "/$prefix/project/data";
  static const String materials = "/$prefix/materials";
}
