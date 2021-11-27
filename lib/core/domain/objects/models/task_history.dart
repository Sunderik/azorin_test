import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:tecon_task/core/domain/objects/models/attached_file.dart';

part 'task_history.g.dart';

abstract class TaskHistory implements Built<TaskHistory, TaskHistoryBuilder> {
  String? get guid; // Уникальный идентификатор объекта

  String? get date;

  String
      get autoComment; // Комментарий, сгенерированный по шаблону "Дата Время Фамилия Инициалы Описание"

  String? get comment; // Комментарий пользователя

  BuiltList<String>? get images; // Прикрепленные изображения

  BuiltList<AttachedFile>? get files; // Прикрепленные файлы

  String? get taskId; // Уникальный идентификатор задачи

  String? get taskName; // Наименование задачи

  String? get status; // Идентификатор элемента перечисления "статус задачи"

  TaskHistory._();
  factory TaskHistory([void Function(TaskHistoryBuilder) updates]) =
      _$TaskHistory;
}
