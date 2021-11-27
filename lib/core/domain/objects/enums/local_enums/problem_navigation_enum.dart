import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'problem_navigation_enum.g.dart';

/// Перечисление, которое указывает из какого окна совершен переход\
/// на создание проблемы или на информацию о проблеме
class ProblemNavigationEnum extends EnumClass {
  /// Переход из списка проблем
  static const ProblemNavigationEnum fromProblemsList = _$fromProblemsList;

  /// Переход из раздела проблем на окне статистика
  static const ProblemNavigationEnum fromStatisticsProblems = _$fromStatisticsProblems;

  /// Переход из списка проблем предприятия
  static const ProblemNavigationEnum fromStatisticsSystem = _$fromStatisticsSystem;

  /// Переход из пуш-уведомления
  static const ProblemNavigationEnum fromPushNotification = _$fromPushNotification;

  /// Переход из чата
  static const ProblemNavigationEnum fromChatList = _$fromChatList;

  const ProblemNavigationEnum._(String name) : super(name);

  static BuiltSet<ProblemNavigationEnum> get values => _$problemNavigationEnumValues;
  static ProblemNavigationEnum valueOf(String name) => _$problemNavigationEnumValueOf(name);
}
