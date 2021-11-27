import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'problem_status_enum.g.dart';

/// Перечисление 'Статус проблемы'.
class ProblemStatusEnum extends EnumClass {
  /// "Новая".
  static const ProblemStatusEnum inWorkProblem = _$inWorkProblem;

  /// "Выполнена".
  static const ProblemStatusEnum completedProblem = _$completedProblem;

  /// "Новая".
  static const ProblemStatusEnum newProblem = _$newProblem;

  /// "Обратная связь".
  static const ProblemStatusEnum feedbackProblem = _$feedbackProblem;

  int get appId => _appId[this] ?? (throw StateError('No appId for ProblemStatusEnum.$name'));

  static const _appId = const {
    inWorkProblem: 0,
    completedProblem: 1,
    newProblem: 2,
    feedbackProblem: 3,
  };

  const ProblemStatusEnum._(String name) : super(name);

  static BuiltSet<ProblemStatusEnum> get values => _$problemStatusEnumValues;

  static ProblemStatusEnum valueOf(String name) => _$problemStatusEnumValueOf(name);
}
