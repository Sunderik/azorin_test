import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'measuring_system_enum.g.dart';

/// Перечисление 'Единица измерения'.
class MeasuringSystemEnum extends EnumClass {
  /// Единица измерения - "%".
  static const MeasuringSystemEnum percentage = _$percentage;

  /// Единица измерения - "кв.м".
  static const MeasuringSystemEnum sqMeter = _$sqMeter;

  /// Единица измерения - "кг".
  static const MeasuringSystemEnum kg = _$kg;

  /// Единица измерения - "м".
  static const MeasuringSystemEnum meter = _$meter;

  /// Единица измерения - "площадка".
  static const MeasuringSystemEnum area = _$area;

  /// Единица измерения - "стык".
  static const MeasuringSystemEnum joint = _$joint;

  /// Единица измерения - "тонн(а)".
  static const MeasuringSystemEnum ton = _$ton;

  /// Единица измерения - "шт".
  static const MeasuringSystemEnum pieces = _$pieces;

  int get appId => _appId[this] ?? (throw StateError('No appId for Measuring System Enum.$name'));

  static const _appId = const {
    percentage: 0,
    sqMeter: 1,
    kg: 2,
    meter: 3,
    area: 4,
    joint: 5,
    ton: 6,
    pieces: 7,
  };

  const MeasuringSystemEnum._(String name) : super(name);

  static BuiltSet<MeasuringSystemEnum> get values => _$measuringSystemEnumValues;
  static MeasuringSystemEnum valueOf(String name) => _$measuringSystemEnumValueOf(name);
}
