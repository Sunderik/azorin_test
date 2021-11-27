import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models/project_with_tasks.dart';

part 'month_with_projects.g.dart';

/// Обьект месяца, который содержит в себе проекты с задачами
abstract class MonthWithProjects implements Built<MonthWithProjects, MonthWithProjectsBuilder> {
  /// Месяц в виде даты
  DateTime get date;

  /// Список проектов с задачами
  BuiltList<ProjectWithTasks>? get stages;

  MonthWithProjects._();

  factory MonthWithProjects([void Function(MonthWithProjectsBuilder) updates]) = _$MonthWithProjects;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(MonthWithProjects.serializer, this) as Map<String, dynamic>;
  }

  static MonthWithProjects? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(MonthWithProjects.serializer, json);
  }

  static Serializer<MonthWithProjects> get serializer => _$monthWithProjectsSerializer;
}
