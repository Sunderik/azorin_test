import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'starting_page.g.dart';

class StartingPage extends EnumClass {
  static const StartingPage projectList = _$projectList;
  static const StartingPage tasksList = _$task;
  static const StartingPage problemList = _$problems;
  static const StartingPage teamList = _$team;
  static const StartingPage memberDetails = _$memberDetails;
  static const StartingPage statistics = _$statistics;
  static const StartingPage reports = _$reports;
  static const StartingPage teamTape = _$teamTape;
  static const StartingPage taskTape = _$taskTape;
  static const StartingPage workload = _$workload;

  String get translates =>
      _translates[this] ?? (throw StateError('No translate for Role.$name'));

  static const _translates = const {
    projectList: 'Список проектов',
    tasksList: 'Задачи',
    problemList: 'Проблемы',
    teamList: 'Команда проекта',
    memberDetails: 'Информация о сотруднике',
    statistics: 'Статистика',
    reports: 'Отчёты',
    teamTape: 'Лента бригады',
    taskTape: 'Лента задач',
    workload: 'Загрузка подразделения'
  };

  const StartingPage._(String name) : super(name);

  static BuiltSet<StartingPage> get values => _$startingPageValues;
  static StartingPage valueOf(String name) => _$startingPageValueOf(name);
}
