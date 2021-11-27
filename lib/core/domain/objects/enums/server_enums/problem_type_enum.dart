import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'problem_type_enum.g.dart';

/// Перечисление "Типы проблем".
class ProblemTypeEnum extends EnumClass {
  /// Тип проблемы - "Заказчик".
  static const ProblemTypeEnum customer = _$customer;

  /// Тип проблемы - "Проблема логистики".
  static const ProblemTypeEnum logistics = _$logistics;

  /// Тип проблемы - "Проблемы монтажа".
  static const ProblemTypeEnum installation = _$installation;

  /// Тип проблемы - "Проблема" ("Проблемы общие").
  static const ProblemTypeEnum common = _$common;

  /// Тип проблемы - "ПК модуль".
  static const ProblemTypeEnum modulePC = _$modulePC;

  /// Тип проблемы - "Проблемы ПО".
  static const ProblemTypeEnum software = _$software;

  /// Тип проблемы - "Проблемы продукции УЗТМ".
  static const ProblemTypeEnum productsUZTM = _$productsUZTM;

  /// Тип проблемы - "Несоответствие проекта".
  static const ProblemTypeEnum project = _$project;

  /// Тип проблемы - "Производство".
  static const ProblemTypeEnum production = _$production;

  /// Тип проблемы - "Прочие".\
  /// Должен быть исключен.
  static const ProblemTypeEnum others = _$others;

  int get appId => _appId[this] ?? (throw StateError('No appId for Problem Type Enum.$name'));

  static const _appId = const {
    customer: 0,
    logistics: 1,
    installation: 2,
    common: 3,
    modulePC: 4,
    software: 5,
    productsUZTM: 6,
    project: 7,
    production: 8,
    others: 9,
  };

  const ProblemTypeEnum._(String name) : super(name);

  static BuiltSet<ProblemTypeEnum> get values => _$problemTypeEnumValues;
  static ProblemTypeEnum valueOf(String name) => _$problemTypeEnumValueOf(name);
}
