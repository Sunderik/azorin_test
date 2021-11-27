import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/features/tasks_list_screen/repository/models/serializers.dart';

part 'day.g.dart';

abstract class Day implements Built<Day, DayBuilder> {
  /// Уникальный идентификатор дня.
  String? get guid;

  /// Порядковый номер дня в плане.
  num? get number;

  /// Реальная дата, соответствующая дню в плане.
  DateTime? get date;

  Day._();

  factory Day([void Function(DayBuilder) updates]) = _$Day;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(Day.serializer, this) as Map<String, dynamic>;
  }

  static Day? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Day.serializer, json);
  }

  static Serializer<Day> get serializer => _$daySerializer;
}
