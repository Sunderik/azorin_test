import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/features/tasks_list_screen/repository/models/serializers.dart';

part 'task_element.g.dart';

abstract class TaskElement implements Built<TaskElement, TaskElementBuilder> {
  String? get guid;

  String? get name;

  num? get number;

  num? get duration;

  num? get countNorm;

  String? get units;

  BuiltList<String>? get projectMembers;

  TaskElement._();

  factory TaskElement([void Function(TaskElementBuilder) updates]) =
      _$TaskElement;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(TaskElement.serializer, this)
        as Map<String, dynamic>;
  }

  static TaskElement? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(TaskElement.serializer, json);
  }

  static Serializer<TaskElement> get serializer => _$taskElementSerializer;
}
