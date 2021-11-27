import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'snack_bar_operations_enum.g.dart';

class SnackBarOperationsEnum extends EnumClass {
  static const SnackBarOperationsEnum creatureTask = _$creatureTask;
  static const SnackBarOperationsEnum takeInWorkTask = _$takeInWorkTask;
  static const SnackBarOperationsEnum completionTask = _$completionTask;
  static const SnackBarOperationsEnum cancelingTask = _$cancelingTask;
  static const SnackBarOperationsEnum creatureProblem = _$creatureProblem;

  String get translates => _translates[this] ?? (throw StateError('No translate for SnackBarOperations.$name'));

  static const _translates = const {
    creatureTask: 'Создание задачи',
    takeInWorkTask: 'Взятие задачи в работу',
    completionTask: 'Завершение задачи',
    cancelingTask: 'Отмена задачи',
    creatureProblem: 'Создание проблемы'
  };

  const SnackBarOperationsEnum._(String name) : super(name);

  static BuiltSet<SnackBarOperationsEnum> get values => _$snackBarOperationsEnumValues;
  static SnackBarOperationsEnum valueOf(String name) => _$snackBarOperationsEnumValueOf(name);
}
