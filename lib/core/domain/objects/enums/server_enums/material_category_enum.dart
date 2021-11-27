import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'material_category_enum.g.dart';

/// Перечисление 'Категория материалов'.
class MaterialCategoryEnum extends EnumClass {
  /// "Демонтаж".
  static const MaterialCategoryEnum disassembly = _$disassembly;

  /// "Монтаж".
  static const MaterialCategoryEnum assembly = _$assembly;

  /// "Наладка".
  static const MaterialCategoryEnum adjustment = _$adjustment;

  /// "Прочее".
  static const MaterialCategoryEnum other = _$other;

  /// "Сервис".
  static const MaterialCategoryEnum service = _$service;

  int get appId => _appId[this] ?? (throw StateError('No appId for MaterialCategoryEnum.$name'));

  static const _appId = const {
    disassembly: 0,
    assembly: 1,
    adjustment: 2,
    other: 3,
    service: 4,
  };

  const MaterialCategoryEnum._(String name) : super(name);

  static BuiltSet<MaterialCategoryEnum> get values => _$materialCategoryEnumValues;
  static MaterialCategoryEnum valueOf(String name) => _$materialCategoryEnumValueOf(name);
}
