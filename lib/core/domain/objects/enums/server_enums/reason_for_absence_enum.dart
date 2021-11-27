import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'reason_for_absence_enum.g.dart';

/// Перечисление причин отсутствия.
class ReasonForAbsenceEnum extends EnumClass {
  /// Причина отсутствия - "Административный отпуск".
  static const ReasonForAbsenceEnum administrativeLeave = _$administrativeLeave;

  /// Причина отсутствия - "Больничный лист".
  static const ReasonForAbsenceEnum sick = _$sick;

  /// Причина отсутствия - "Дорога".
  static const ReasonForAbsenceEnum onTheWay = _$onTheWay;

  /// Причина отсутствия - "Официальный отпуск".
  static const ReasonForAbsenceEnum officialVacation = _$officialVacation;

  /// Причина отсутствия - "Перекомандировка".
  static const ReasonForAbsenceEnum secondment = _$secondment;

  /// Причина отсутствия - "Прогул".
  static const ReasonForAbsenceEnum truancy = _$truancy;

  /// Причина отсутствия - "Простой".
  static const ReasonForAbsenceEnum downtime = _$downtime;

  /// Причина отсутствия - "Невыход".
  static const ReasonForAbsenceEnum absence = _$absence;

  int get appId => _appId[this] ?? (throw StateError('No appId for ReasonForAbsenceEnum.$name'));

  static const _appId = const {
    administrativeLeave: 0,
    sick: 1,
    onTheWay: 2,
    officialVacation: 3,
    secondment: 4,
    truancy: 5,
    downtime: 6,
    absence: 7,
  };

  const ReasonForAbsenceEnum._(String name) : super(name);

  static BuiltSet<ReasonForAbsenceEnum> get values => _$reasonForAbsenceEnumValues;

  static ReasonForAbsenceEnum valueOf(String name) => _$reasonForAbsenceEnumValueOf(name);
}
