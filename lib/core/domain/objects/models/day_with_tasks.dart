import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models/task.dart';

part 'day_with_tasks.g.dart';

abstract class DayWithTasks implements Built<DayWithTasks, DayWithTasksBuilder> {
  num? get dayNumber;

  DateTime? get date;

  BuiltList<Task>? get tasks;

  DayWithTasks._();

  factory DayWithTasks([void Function(DayWithTasksBuilder) updates]) = _$DayWithTasks;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(DayWithTasks.serializer, this) as Map<String, dynamic>;
  }

  static DayWithTasks? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(DayWithTasks.serializer, json);
  }

  static Serializer<DayWithTasks> get serializer => _$dayWithTasksSerializer;
}
