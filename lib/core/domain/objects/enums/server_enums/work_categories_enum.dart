import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'work_categories_enum.g.dart';

/// Перечисление 'Категория работ'.
class WorkCategoriesEnum extends EnumClass {
  /// Категория работ - "Демонтаж".
  static const WorkCategoriesEnum disassembling = _$disassembling;

  /// Категория работ - "Монтаж".
  static const WorkCategoriesEnum assembling = _$assembling;

  /// Категория работ - "Наладка".
  static const WorkCategoriesEnum adjustment = _$adjustment;

  /// Категория работ - "Общая".
  static const WorkCategoriesEnum common = _$common;

  /// Категория работ - "Прочее".
  static const WorkCategoriesEnum other = _$other;

  /// Категория работ - "Сервис".
  static const WorkCategoriesEnum service = _$service;

  int get appId => _appId[this] ?? (throw StateError('No appId for WorkCategoriesEnum.$name'));

  static const _appId = const {
    disassembling: 0,
    assembling: 1,
    adjustment: 2,
    common: 3,
    other: 4,
    service: 5,
  };

  const WorkCategoriesEnum._(String name) : super(name);

  static BuiltSet<WorkCategoriesEnum> get values => _$workCategoriesEnumValues;
  static WorkCategoriesEnum valueOf(String name) => _$workCategoriesEnumValueOf(name);
}
