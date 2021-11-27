part of values;

class StringConst {
  //strings
  static const String APP_NAME = "Tecon Task";

  //#region AppBars Names
  //----------------------COMMON----------------------------//
  ///Название окна авторизации
  static final String APPBAR_AUTH = "Авторизация";

  ///Название окна о приложении
  static final String APPBAR_ABOUT = "О приложении";

  ///Название окна настроек
  static final String APPBAR_SETTINGS = "Настройки";

  //----------------------PROJECT----------------------------//
  ///Название окна выбора текущего проекта
  static final String APPBAR_PROJECT_SELECTION = "Выбор проекта";

  ///Название окна списка проектов
  static final String APPBAR_PROJECTS_LIST = "Список проектов";

  ///Название окна информации о проекте
  static final String APPBAR_PROJECT_INFO = "Информация о проекте";

  ///Название окна информация о проекте (если проект текущий)
  static final String APPBAR_CURRENT_PROJECT = "Текущий проект";

  //----------------------MEMBER----------------------------//
  ///Название окна информация о сотруднике
  static final String APPBAR_MEMBERS_LIST = "Команда проекта";

  ///Название окна информации о сотруднике
  static final String APPBAR_MEMBER_INFO = "Информация о сотруднике";

  //----------------------PROBLEM----------------------------//
  ///Название окна создания проблемы
  static final String APPBAR_PROBLEM_CREATION = "Создание проблемы";

  ///Название окна списка проблем (специалисты)
  static final String APPBAR_PROBLEMS_LIST = "Проблемы";

  ///Название окна списка проблем (куратор/бригадир)
  static final String APPBAR_PROJECT_PROBLEMS_LIST = "Проблемы проекта";

  ///Название окна информации о проблеме
  static final String APPBAR_PROBLEM_INFO = "Информация о проблеме";

  //----------------------TASK----------------------------//
  ///Название окна
  static final String APPBAR_TASKS_LIST_NEW = "Задачи ${TASKS_STATUS_NEW.substring(0, 2).toLowerCase() + 'ые'}";

  ///Название окна
  static final String APPBAR_TASKS_LIST_IN_WORK = "Задачи ${TASKS_STATUS_IN_WORK.toLowerCase()}";

  ///Название окна
  static final String APPBAR_TASKS_LIST_COMPLETED =
      "Задачи ${TASKS_STATUS_COMPLETE.substring(0, 6).toLowerCase() + 'ные'}";

  ///Название окна
  static final String APPBAR_TASK_INFO = "Информация о задаче";

  ///Название окна
  static final String APPBAR_TASK_CREATING = "Создание задачи";

  //#endregion

  //#region Objects Statuses Names
  //----------------------TASK----------------------------//

  ///Название
  static final String TASKS_STATUS_NEW = "Новая";

  ///Название
  static final String TASKS_STATUS_IN_WORK = "В работе";

  ///Название
  static final String TASKS_STATUS_COMPLETE = "Завешена";

  ///Название
  static final String TASKS_STATUS_CANCELED = "Отменена";

  ///Название
  static final String TASKS_STATUS_STOPPED = "Остановлена";

//#endregion
}
