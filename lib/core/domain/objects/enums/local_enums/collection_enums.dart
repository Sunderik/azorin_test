import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:collection/collection.dart';
import 'package:tecon_task/app_starter.dart';
import 'package:tecon_task/core/domain/objects/objects.dart';

part 'collection_enums.g.dart';

/// Перечисление, хранящее информацию о прочих перечислениях.
class CollectionEnums extends EnumClass {
  /// Перечисление 'Статус чата'.
  static const CollectionEnums chatStatus = _$chatStatus;

  /// Перечисление 'Категория материалов'.
  static const CollectionEnums materialCategory = _$materialCategory;

  /// Перечисление 'Единица измерения'.
  static const CollectionEnums measuringSystem = _$measuringSystem;

  /// Перечисление 'Типы периода'.
  static const CollectionEnums periodType = _$periodType;

  /// Перечисление 'Статус проблемы'.
  static const CollectionEnums problemStatus = _$problemStatus;

  /// Перечисление 'Типы проблемы'.
  static const CollectionEnums problemType = _$problemType;

  /// Перечисление 'Статусы прогресса проекта'.
  static const CollectionEnums projectProgressStatus = _$projectProgressStatus;

  /// Перечисление 'Статус проекта'.
  static const CollectionEnums projectStatus = _$projectStatus;

  /// Перечисление 'Типы проектов'.
  static const CollectionEnums projectType = _$projectType;

  /// Перечисление 'Причина отсутствия'.
  static const CollectionEnums reasonForAbsence = _$reasonForAbsence;

  /// Перечисление 'Роли сотдрудника'.
  static const CollectionEnums role = _$role;

  /// Перечисление 'Статус задачи'.
  static const CollectionEnums taskStatus = _$taskStatus;

  /// Перечисление 'Статус исполнителя'.
  static const CollectionEnums teamMemberStatus = _$teamMemberStatus;

  /// Перечисление 'Категория работ'.
  static const CollectionEnums workCategories = _$workCategories;

  /// Перечисление 'Место работы'.
  static const CollectionEnums workplace = _$workplace;

  const CollectionEnums._(String name) : super(name);

  String get guid => _guid[this] ?? (throw StateError('No guid for CollectionEnums.$name'));

  String get name => _name[this] ?? (throw StateError('No name for CollectionEnums.$name'));

  static const _guid = const {
    chatStatus: 'e444faff-9c3b-41c7-8a28-98bc4fa7c0e8',
    materialCategory: 'a4467db2-c343-4078-85dc-189dbf90fd58',
    measuringSystem: '32523330-e572-4f98-a162-95d696396d62',
    periodType: '2d12d556-9233-4b69-884c-7090cb13dfda',
    problemStatus: '4e87770a-8089-4779-963f-caf31001080c',
    problemType: 'f2b2fb42-c239-49cc-9797-c52f81ef8105',
    projectProgressStatus: 'e28f6fac-e83e-49cd-8448-bd8d7dab8557',
    projectStatus: '3e9edd79-3399-45b9-be17-742a246e6718',
    projectType: 'ec831af1-4c38-4e3f-b4d3-2b03a2067c08',
    reasonForAbsence: 'd4834daa-b80d-4e3a-a25f-cdb75cbaf441',
    role: 'ad0202f7-3b96-43f4-b8cd-c2da0aa6b482',
    taskStatus: '691db2c0-a031-49b4-b206-e40d537614e1',
    teamMemberStatus: '2a5c4909-a2b4-4635-add1-dce22fa553f5',
    workCategories: '7d6687ca-b316-43bf-af7b-29a5632f45c7',
    workplace: 'cc55d145-4f86-4ba2-b977-5ae66f282653',
  };

  static const _name = const {
    chatStatus: 'Статус чата',
    materialCategory: 'Категория материалов',
    measuringSystem: 'Единица измерения',
    periodType: 'Типы периода',
    problemStatus: 'Статус проблемы',
    problemType: 'Типы проблемы',
    projectProgressStatus: 'Статусы прогресса проекта',
    projectStatus: 'Статус проекта',
    projectType: 'Типы проектов',
    reasonForAbsence: 'Причина отсутствия',
    role: 'Роли сотдрудника',
    taskStatus: 'Статус задачи',
    teamMemberStatus: 'Статус исполнителя',
    workCategories: 'Категория работ',
    workplace: 'Место работы',
  };

  /// Получить перечисление по его уникальному идентификатору [guid].
  static CommonEnum? getCommonEnumByGuid(String guid) {
    return store?.state.collectorEnumsState.collectorEnums?.directory?.firstWhereOrNull((e) => e.guid == guid);
  }

  static BuiltSet<CollectionEnums> get values => _$collectionEnumsValues;

  static CollectionEnums valueOf(String name) => _$collectionEnumsValueOf(name);
}
