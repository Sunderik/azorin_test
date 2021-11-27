import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'statistics_system_navigation_enum.g.dart';

/// Перечисление, указывающее какие проблемы объекта отобразить
class StatisticsSystemNavigationEnum extends EnumClass {
  /// Переход к проблемам логистики
  static const StatisticsSystemNavigationEnum toLogisticsProblems = _$toLogisticsProblems;

  /// Переход к проблемам проектам
  static const StatisticsSystemNavigationEnum toProjectProblems = _$toProjectProblems;

  /// Переход к прочим проблемам объекта (без проблем логистики и проекта)
  static const StatisticsSystemNavigationEnum toOtherProblems = _$toOtherProblems;

  /// Переход к проблемам объекта проектирования или наладки
  static const StatisticsSystemNavigationEnum toProblemsDesignService = _$toProblemsDesignService;

  const StatisticsSystemNavigationEnum._(String name) : super(name);

  static BuiltSet<StatisticsSystemNavigationEnum> get values => _$statisticsSystemNavigationEnumValues;
  static StatisticsSystemNavigationEnum valueOf(String name) => _$statisticsSystemNavigationEnumValueOf(name);
}
