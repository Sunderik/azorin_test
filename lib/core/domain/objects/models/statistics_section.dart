import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';

part 'statistics_section.g.dart';

abstract class StatisticsSection implements Built<StatisticsSection, StatisticsSectionBuilder> {
  /// Уникальный идентификатор раздела
  String? get sectionGuid;

  /// Наименование раздела
  String? get sectionName;

  /// Текущий прогресс
  double? get progress;

  StatisticsSection._();

  factory StatisticsSection([void Function(StatisticsSectionBuilder) updates]) = _$StatisticsSection;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(StatisticsSection.serializer, this) as Map<String, dynamic>;
  }

  static StatisticsSection? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(StatisticsSection.serializer, json);
  }

  static Serializer<StatisticsSection> get serializer => _$statisticsSectionSerializer;
}
