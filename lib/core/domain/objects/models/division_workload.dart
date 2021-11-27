import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models/employee_from_division.dart';

part 'division_workload.g.dart';

/// Объект данных отдела филиала
abstract class DivisionWorkload implements Built<DivisionWorkload, DivisionWorkloadBuilder> {
  /// Идентификатор отдела филиала
  String? get guid;

  /// Наименование отдела филиала
  String? get name;

  /// Список сотрудников отдела филиала
  BuiltList<EmployeeFromDivision>? get employees;

  DivisionWorkload._();
  factory DivisionWorkload([void Function(DivisionWorkloadBuilder) updates]) = _$DivisionWorkload;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(DivisionWorkload.serializer, this) as Map<String, dynamic>;
  }

  static DivisionWorkload? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(DivisionWorkload.serializer, json);
  }

  static Serializer<DivisionWorkload> get serializer => _$divisionWorkloadSerializer;
}
