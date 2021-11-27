import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models.dart';

part 'task_design.g.dart';

/// Модель задачи для отдела проектирвания.
abstract class TaskDesign implements Built<TaskDesign, TaskDesignBuilder> {
  /// Уникальный идентификатор задачи.
  String? get guid;

  /// Наименование задачи.
  String? get name;

  /// Уникальный идентификатор статуса задачи.
  String? get status;

  /// Описание задачи.
  String? get description;

  /// Длительность задачи.
  num? get duration;

  /// Стадия, к которой принадлежит задача.
  SimpleType? get stage;

  /// Раздел, к которому относится задача задачи.
  SimpleType? get section;

  /// Текущее количество исполнителей.
  int? get currentExecutors;

  /// Максимальное количество исполнителей.
  int? get maxExecutors;

  /// Полный путь задачи.
  String? get fullPath;

  /// Месяц.
  Month? get month;

  /// Вложенные задачи.
  BuiltList<SubTask>? get subTasks;

  TaskDesign._();

  factory TaskDesign([void Function(TaskDesignBuilder) updates]) = _$TaskDesign;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(TaskDesign.serializer, this) as Map<String, dynamic>;
  }

  static TaskDesign? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(TaskDesign.serializer, json);
  }

  static Serializer<TaskDesign> get serializer => _$taskDesignSerializer;
}
