import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'report_type_enum.g.dart';

/// Перечисление для типов отчетов.
class ReportTypeEnum extends EnumClass {
  /// "Сводная по проекту".
  static const ReportTypeEnum projectSummary = _$projectSummary;

  /// "Табель учета рабочего времени сотрудников по проекту".
  static const ReportTypeEnum employeeTimeSheetByProject = _$employeeTimeSheetByProject;

  /// "Табель учета рабочего времени сотрудников по типу проектов".
  static const ReportTypeEnum employeeTimeSheetByProjectType = _$employeeTimeSheetByProjectType;

  /// "Табель учета рабочего времени сотрудников по ФИО сотрудника".
  static const ReportTypeEnum employeeTimeSheetByName = _$employeeTimeSheetByName;

  /// "Кабельный журнал".
  static const ReportTypeEnum cableJournal = _$cableJournal;

  /// "Протокол проверки сопротивления изоляции проводов, кабелей".
  static const ReportTypeEnum resistanceJournal = _$resistanceJournal;

  /// "Отчет по работе сотрудника".
  static const ReportTypeEnum employeePerformance = _$employeePerformance;

  /// "Карточка проблемы".
  static const ReportTypeEnum problemCard = _$problemCard;

  String get ids => _ids[this] ?? (throw StateError('No id for Report Type Enum.$name'));

  String get translates => _translates[this] ?? (throw StateError('No translate for Report Type Enum.$name'));

  static const _ids = const {
    projectSummary: '06b9f7a3-73bd-4440-a716-4b8763b801c2',
    employeeTimeSheetByProject: '8b7aca42-abb8-4759-8a5f-a2b39f102230',
    employeeTimeSheetByProjectType: '40457fdf-4af1-4b4f-9d96-2e3630a9bc26',
    employeeTimeSheetByName: 'afe70d7b-eb39-4ed9-b25e-b2df2454928c',
    cableJournal: 'e60ffac2-2f82-4ddf-a2e2-0ce179ff3fe8',
    resistanceJournal: '97687391-14a0-4b93-a970-d24ecc22904e',
    employeePerformance: '9844c180-8c40-4eb0-b35c-4529b7a0693c',
    problemCard: 'e6c2e449-5655-4f9a-8d21-1a22a9873f9d',
  };

  static const _translates = const {
    projectSummary: 'Сводная по проекту',
    employeeTimeSheetByProject: 'Табель учета рабочего времени сотрудников по проекту',
    employeeTimeSheetByProjectType: 'Табель учета рабочего времени сотрудников по типу проектов',
    employeeTimeSheetByName: 'Табель учета рабочего времени сотрудников по ФИО сотрудника',
    cableJournal: 'Кабельный журнал',
    resistanceJournal: 'Протокол проверки сопротивления изоляции проводов, кабелей',
    employeePerformance: 'Отчет по работе сотрудника',
    problemCard: 'Карточка проблемы',
  };

  const ReportTypeEnum._(String name) : super(name);

  static BuiltSet<ReportTypeEnum> get values => _$reportTypeEnumValues;

  static ReportTypeEnum valueOf(String name) => _$reportTypeEnumValueOf(name);
}
