import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models/task_details.dart';

part 'project_with_tasks.g.dart';

/// Обьект проекта со списком задач
abstract class ProjectWithTasks implements Built<ProjectWithTasks, ProjectWithTasksBuilder> {
  /// Идентификатор проекта
  String? get guid;

  /// Полное имя проекта
  String? get name;

  /// Список задач (отдел проектирования)
  BuiltList<TaskDetails>? get tasks;

  ProjectWithTasks._();

  factory ProjectWithTasks([void Function(ProjectWithTasksBuilder) updates]) = _$ProjectWithTasks;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(ProjectWithTasks.serializer, this) as Map<String, dynamic>;
  }

  static ProjectWithTasks? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ProjectWithTasks.serializer, json);
  }

  static Serializer<ProjectWithTasks> get serializer => _$projectWithTasksSerializer;
}
