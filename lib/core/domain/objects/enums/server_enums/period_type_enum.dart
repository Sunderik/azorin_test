import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'period_type_enum.g.dart';

/// Перечисление периодов, используемых в формировании отчетов
class PeriodTypeEnum extends EnumClass {
  /// "Период"
  static const PeriodTypeEnum userPeriod = _$userPeriod;

  /// "Все время существования проекта"
  static const PeriodTypeEnum allPeriod = _$allPeriod;

  int get appId => _appId[this] ?? (throw StateError('No appId for Period Type Enum.$name'));

  static const _appId = const {
    allPeriod: 0,
    userPeriod: 1,
  };

  const PeriodTypeEnum._(String name) : super(name);

  static BuiltSet<PeriodTypeEnum> get values => _$periodTypeEnumValues;
  static PeriodTypeEnum valueOf(String name) => _$periodTypeEnumValueOf(name);
}
