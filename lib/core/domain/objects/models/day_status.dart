import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';

part 'day_status.g.dart';

abstract class DayStatus implements Built<DayStatus, DayStatusBuilder> {
  /// Номер дня на проекте.
  num? get day;

  /// Дата.
  DateTime? get date;

  /// Список идентификаторов статусов задач, присутствующих в день [day].
  BuiltList<String>? get statuses;

  DayStatus._();
  factory DayStatus([void Function(DayStatusBuilder) updates]) = _$DayStatus;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(DayStatus.serializer, this) as Map<String, dynamic>;
  }

  static DayStatus? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(DayStatus.serializer, json);
  }

  static Serializer<DayStatus> get serializer => _$dayStatusSerializer;
}
