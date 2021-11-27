import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models.dart';

part 'statistics_group.g.dart';

abstract class StatisticsGroup implements Built<StatisticsGroup, StatisticsGroupBuilder> {
  /// Уникальный идентификатор группы предприятий
  String get guid;

  /// Наименование группы предприятий
  String get name;

  /// Указывает все ли объекты загружены (АСУ или Проекты стадии)
  bool? get allObjectsLoaded;

  /// Список АСУ
  BuiltList<StatisticsAutoSystem>? get aSystems;

  /// Список проектов стадий
  BuiltList<StatisticsStage>? get stages;

  /// Время последнего обновления.
  DateTime? get lastUpdate;

  StatisticsGroup._();
  factory StatisticsGroup([void Function(StatisticsGroupBuilder) updates]) = _$StatisticsGroup;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(StatisticsGroup.serializer, this) as Map<String, dynamic>;
  }

  static StatisticsGroup? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(StatisticsGroup.serializer, json);
  }

  static Serializer<StatisticsGroup> get serializer => _$statisticsGroupSerializer;
}
