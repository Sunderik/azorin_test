import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/features/tasks_list_screen/repository/models/serializers.dart';

part 'sub_task.g.dart';

abstract class SubTask implements Built<SubTask, SubTaskBuilder> {
  String? get guid;

  String? get name;

  String? get status;

  SimpleType? get executor;

  SubTask._();

  factory SubTask([void Function(SubTaskBuilder) updates]) = _$SubTask;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(SubTask.serializer, this) as Map<String, dynamic>;
  }

  static TaskElement? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(TaskElement.serializer, json);
  }

  static Serializer<SubTask> get serializer => _$subTaskSerializer;
}
