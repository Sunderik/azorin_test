import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'position_type_enum.g.dart';

/// Перечисление типов ответов геолокатора.
class PositionTypeEnum extends EnumClass {
  /// TODO: заполнить
  static const PositionTypeEnum log = _$log;

  /// TODO: заполнить
  static const PositionTypeEnum position = _$position;

  const PositionTypeEnum._(String name) : super(name);

  static BuiltSet<PositionTypeEnum> get values => _$positionTypeEnumValues;
  static PositionTypeEnum valueOf(String name) => _$positionTypeEnumValueOf(name);
}
