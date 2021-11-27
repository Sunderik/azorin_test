import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';

part 'employee_from_division.g.dart';

/// Объект данных сотрудника, прикрепленного к филиалу
abstract class EmployeeFromDivision implements Built<EmployeeFromDivision, EmployeeFromDivisionBuilder> {
  /// Идентификатор сотрудника
  String? get guid;

  /// Имя сотрудника
  String? get name;

  /// Специальность сотрудника
  String? get specialty;

  /// Идентификатор места работы сотрудника
  String? get workplace;

  /// Идентификатор причины отсутствия сотрудника
  String? get reasonForAbsence;

  /// Количество задач, выполняемых сотрудником
  int? get tasks;

  EmployeeFromDivision._();

  factory EmployeeFromDivision([void Function(EmployeeFromDivisionBuilder) updates]) = _$EmployeeFromDivision;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(EmployeeFromDivision.serializer, this) as Map<String, dynamic>;
  }

  static EmployeeFromDivision? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(EmployeeFromDivision.serializer, json);
  }

  static Serializer<EmployeeFromDivision> get serializer => _$employeeFromDivisionSerializer;
}
