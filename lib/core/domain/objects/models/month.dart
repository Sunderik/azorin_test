import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';

part 'month.g.dart';

abstract class Month implements Built<Month, MonthBuilder> {
  /// Идентификатор месяца
  String? get guid;

  /// Физическая дата месяца
  DateTime? get date;

  Month._();

  factory Month([void Function(MonthBuilder) updates]) = _$Month;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(Month.serializer, this) as Map<String, dynamic>;
  }

  static Month? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Month.serializer, json);
  }

  static Serializer<Month> get serializer => _$monthSerializer;
}
