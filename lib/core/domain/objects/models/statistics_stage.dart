import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models.dart';

part 'statistics_stage.g.dart';

abstract class StatisticsStage implements Built<StatisticsStage, StatisticsStageBuilder> {
  /// Уникальный идентификатор предприятия
  String? get factoryGuid;

  /// Наименование предприятия
  String? get factoryName;

  /// Уникальный идентификатор стадии
  String? get stageGuid;

  /// Полное наименование стадии
  String? get stageName;

  /// Список разделов
  BuiltList<StatisticsSection>? get sections;

  /// Количество задач в работе
  int? get tasksInWorkCount;

  /// Количество проблем (кроме статуса "Закрытые")
  int? get problemsCount;

  /// Количество сотрудников, занятых задачами "В работе"
  int? get memberOnDutyCount;

  /// Время последнего обновления.
  DateTime? get lastUpdate;

  StatisticsStage._();

  factory StatisticsStage([void Function(StatisticsStageBuilder) updates]) = _$StatisticsStage;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(StatisticsStage.serializer, this) as Map<String, dynamic>;
  }

  static StatisticsStage? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(StatisticsStage.serializer, json);
  }

  static Serializer<StatisticsStage> get serializer => _$statisticsStageSerializer;
}
