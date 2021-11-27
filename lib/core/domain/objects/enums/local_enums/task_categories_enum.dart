import 'package:built_collection/built_collection.dart';

import 'package:built_value/built_value.dart';

part 'task_categories_enum.g.dart';

class TaskCategoriesEnum extends EnumClass {
  static const TaskCategoriesEnum simple = _$simple;
  static const TaskCategoriesEnum withMaterial = _$withMaterial;
  static const TaskCategoriesEnum withCadMaterial = _$withCadMaterial;

  String get ids => _ids[this] ?? (throw StateError('No id for TaskCategoriesEnum.$name'));

  String get translates => _translates[this] ?? (throw StateError('No translate for TaskCategoriesEnum.$name'));

  static const _ids = const {
    simple: '113c130e-dc58-4b0d-8bf2-84dc4f587556',
    withMaterial: '26458274-89d0-4410-8c4b-b01f5f082d6b',
    withCadMaterial: '12806006-04f4-4248-8545-d7c18c12f333',
  };

  static const _translates = const {
    simple: 'Общая',
    withMaterial: 'С количеством',
    withCadMaterial: 'САПР',
  };

  const TaskCategoriesEnum._(String name) : super(name);

  static BuiltSet<TaskCategoriesEnum> get values => _$taskCategoriesEnumValues;

  static TaskCategoriesEnum valueOf(String name) => _$taskCategoriesEnumValueOf(name);
}
