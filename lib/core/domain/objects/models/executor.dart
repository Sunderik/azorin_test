import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models.dart';

part 'executor.g.dart';

/// Объект переноса данных исполнителя проекта.
abstract class Executor implements Built<Executor, ExecutorBuilder> {
  /// Идентификатор исполнителя.
  String? get guid;

  /// Объект переноса данных информации о сотрудника.
  Employee? get employee;

  /// Номер звена.
  num? get unity;

  /// Наименование звена.
  String? get unityName;

  /// Статус исполнителя.
  bool? get status;

  /// Идентификатор причины отсутствия.
  String? get reasonForAbsence;

  Executor._();

  factory Executor([void Function(ExecutorBuilder) updates]) = _$Executor;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(Executor.serializer, this) as Map<String, dynamic>;
  }

  static Executor? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Executor.serializer, json);
  }

  static Serializer<Executor> get serializer => _$executorSerializer;
}
