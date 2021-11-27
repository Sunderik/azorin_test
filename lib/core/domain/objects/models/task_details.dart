import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models.dart';
import 'package:tecon_task/core/network/models/base_model.dart';

part 'task_details.g.dart';

abstract class TaskDetails implements BaseModel, Built<TaskDetails, TaskDetailsBuilder> {
  // Fields
  String? get guid; //common

  String? get name; //common

  String? get status; //common

  String? get description; //common

  num? get order; //normal

  String? get category; //normal

  num? get duration; //common

  bool? get tryComplete; //normal

  num? get countNorm; //normal

  num? get countFact; //normal

  MaterialModel? get materials; //normal

  BuiltList<TaskElement>? get elements; //normal

  Day? get day; //normal

  SimpleType? get projectType; //normal

  BuiltList<Executor>? get executors; //normal

  String? get taskCategory; //normal

  BuiltList<HistoryItem>? get history;

  int? get maxExecutors; //design

  int? get currentExecutors; //design

  Month? get month; //design

  String? get fullPath; //design

  SimpleType? get section; //design

  SimpleType? get stage; //design

  BuiltList<SubTask>? get subTasks; //normal

  TaskDetails._();

  factory TaskDetails([void Function(TaskDetailsBuilder) updates]) = _$TaskDetails;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(TaskDetails.serializer, this) as Map<String, dynamic>;
  }

  static TaskDetails? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(TaskDetails.serializer, json);
  }

  static Serializer<TaskDetails> get serializer => _$taskDetailsSerializer;
}
