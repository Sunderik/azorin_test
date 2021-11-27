import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'department_enum.g.dart';

/// Перечисление отделов.
class DepartmentEnum extends EnumClass {
  /// Отдел монтажа.
  static const DepartmentEnum install = _$install;

  /// Отдел проектирования.
  static const DepartmentEnum design = _$design;

  /// Отдел наладки.
  static const DepartmentEnum service = _$service;

  const DepartmentEnum._(String name) : super(name);

  String get translates => _translates[this] ?? (throw StateError('No translate for DepartmentEnum.$name'));

  String get instanceId => _instanceId[this] ?? (throw StateError('No instanceId for DepartmentEnum.$name'));

  static const _translates = const {
    install: 'Монтаж',
    design: 'Проектирование',
    service: 'Наладка',
  };

  static const _instanceId = const {
    install: '',
    design: '59b80dbe-b6e0-4a02-83e4-ec67962ffb2e',
    service: 'e988eb18-2536-4ce7-9cec-967454043f8d',
  };

  static BuiltSet<DepartmentEnum> get values => _$departmentEnumValues;

  static DepartmentEnum valueOf(String name) => _$departmentEnumValueOf(name);
}
