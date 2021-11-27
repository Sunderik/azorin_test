import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/objects/models.dart';
import 'package:tecon_task/features/tasks_list_screen/repository/models/serializers.dart';

part 'task.g.dart';

abstract class Task implements Built<Task, TaskBuilder> {
  String? get guid;

  String? get name;

  String? get description;

  num? get order;

  num? get duration;

  num? get countFact;

  num? get countNorm;

  bool? get simpleTask;

  bool? get isSelected;

  Day? get day;

  String? get status;

  String? get category;

  SimpleType? get project;

  MaterialModel? get materials;

  BuiltList<TaskElement>? get elements;

  BuiltList<Executor>? get executors;

  Task._();

  factory Task([void Function(TaskBuilder) updates]) = _$Task;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(Task.serializer, this) as Map<String, dynamic>;
  }

  static Task? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Task.serializer, json);
  }

  static Serializer<Task> get serializer => _$taskSerializer;
}
