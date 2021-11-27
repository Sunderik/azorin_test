import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';

part 'employee.g.dart';

/// Объект переноса данных сотрудника.
abstract class Employee implements Built<Employee, EmployeeBuilder> {
  /// Идентификатор сотрудника.
  String? get guid;

  /// ФИО.
  String? get fullName;

  /// Короткое имя.
  String? get shortName;

  /// Имя
  String? get name;

  /// Фамилия
  String? get surname;

  /// Отчество
  String? get patronymic;

  /// Статус сотрудника.
  bool? get status;

  /// Описание участника проекта.
  String? get description;

  /// Почта участника проекта.
  String? get email;

  /// Вторая почта участника проекта.
  String? get email2;

  /// Первый телефон участника проекта.
  String? get phoneFirst;

  /// Второй телефон участника проекта.
  String? get phoneSecond;

  /// Звено.
  String? get unity;

  /// Наименование звена.
  String? get unityName;

  /// Специальность участника преокта.
  String? get speciality;

  /// Роль.
  String? get role;

  /// Идентификатор элемента перечисления "место работы".
  String? get workPlace;

  /// Наименование филиала/города.
  String? get branch;

  /// Наименование отдела.
  String? get department;

  Employee._();

  factory Employee([void Function(EmployeeBuilder) updates]) = _$Employee;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(Employee.serializer, this) as Map<String, dynamic>;
  }

  static Employee? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Employee.serializer, json);
  }

  static Serializer<Employee> get serializer => _$employeeSerializer;
}
