import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:tecon_task/core/domain/objects/models/task_history.dart';

part 'tasks_tape.g.dart';

abstract class TasksTape implements Built<TasksTape, TasksTapeBuilder> {
  String? get guid; // уникальный идентификатор проекта

  BuiltList<TaskHistory>? get history; // история действий

  TasksTape._();
  factory TasksTape([void Function(TasksTapeBuilder) updates]) = _$TasksTape;
}
