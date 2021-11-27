import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';

part 'statistics_project.g.dart';

abstract class StatisticsProject implements Built<StatisticsProject, StatisticsProjectBuilder> {
  /// Уникальный идентификатор проекта.
  String? get projectGuid;

  /// Наименование типа проекта.
  String? get projectType;

  /// Уникальный идентификатор типа проекта.
  String? get projectTypeGuid;

  /// Значение прогресса работы над проектом.
  double? get progress;

  /// Значение, соответствующее плану работы над проектом.
  double? get plan;

  /// Номер текущего дня на проекте.
  int? get currentDay;

  /// Уникальный идентификатор перечисления, описывающий прогресс проекта.
  String? get progressStatus;

  /// Количество дней, указывающее отставание или опережение по плану.
  num? get progressDays;

  StatisticsProject._();

  factory StatisticsProject([void Function(StatisticsProjectBuilder) updates]) = _$StatisticsProject;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(StatisticsProject.serializer, this) as Map<String, dynamic>;
  }

  static StatisticsProject? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(StatisticsProject.serializer, json);
  }

  static Serializer<StatisticsProject> get serializer => _$statisticsProjectSerializer;
}
