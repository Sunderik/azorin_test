import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'task_status_enum.g.dart';

class TaskStatusEnum extends EnumClass {
  /// Статус задачи: В работе.
  static const TaskStatusEnum inWorkTask = _$inWorkTask;

  /// Статус задачи: Выполнена.
  static const TaskStatusEnum completedTask = _$completedTask;

  /// Статус задачи: Новая.
  static const TaskStatusEnum newTask = _$newTask;

  /// Статус задачи: Остановлена.
  static const TaskStatusEnum stoppedTask = _$stoppedTask;

  /// Статус задачи: Отменена.
  static const TaskStatusEnum canceledTask = _$canceledTask;

  int get appId => _appId[this] ?? (throw StateError('No appId for TaskStatus.$name'));

  static const _appId = const {
    inWorkTask: 0,
    completedTask: 1,
    newTask: 2,
    stoppedTask: 3,
    canceledTask: 4,
  };

  const TaskStatusEnum._(String name) : super(name);

  static BuiltSet<TaskStatusEnum> get values => _$taskStatusEnumValues;

  static TaskStatusEnum valueOf(String name) => _$taskStatusEnumValueOf(name);
}
