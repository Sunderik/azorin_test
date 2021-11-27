import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models/statistics_project.dart';

part 'statistics_auto_system.g.dart';

abstract class StatisticsAutoSystem
    implements Built<StatisticsAutoSystem, StatisticsAutoSystemBuilder> {
  String? get aSysGuid;

  String? get aSysName;

  String? get factoryGuid;

  String? get factoryName;

  int? get executorsOnShiftCount;

  BuiltList<StatisticsProject>? get projects;

  int? get problemLogisticsCount;

  int? get problemProjectCount;

  int? get problemOtherCount;

  int? get deltaProblemLogisticsCount;

  int? get deltaProblemProjectCount;

  int? get deltaProblemOtherCount;

  StatisticsAutoSystem._();

  factory StatisticsAutoSystem(
          [void Function(StatisticsAutoSystemBuilder) updates]) =
      _$StatisticsAutoSystem;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(StatisticsAutoSystem.serializer, this)
        as Map<String, dynamic>;
  }

  static StatisticsAutoSystem? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(StatisticsAutoSystem.serializer, json);
  }

  static Serializer<StatisticsAutoSystem> get serializer =>
      _$statisticsAutoSystemSerializer;
}
