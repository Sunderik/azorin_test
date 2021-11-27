import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models.dart';

part 'problem_details.g.dart';

abstract class ProblemDetails implements Built<ProblemDetails, ProblemDetailsBuilder> {
  /// Уникальный идентификатор проблемы.
  String? get guid;

  /// Уникальный идентификатор типа проблемы.
  String? get type;

  /// Уникальный идентификатор статуса проблемы.
  String? get status;

  /// Наименование проблемы.
  String? get name;

  /// Описание проблемы.
  String? get description;

  /// Дата создания проблемы.
  DateTime? get date;

  /// Автор проблемы.
  Author? get author;

  /// Пользователь, работающий над проблемой.
  Author? get assigned;

  /// Проект, к которому относится проблема.
  SimpleType? get project;

  /// История проблемы.
  BuiltList<HistoryItem>? get history;

  /// Уникальный идентификатор статуса чата для проблемы.
  String? get chatStatus;

  ProblemDetails._();

  factory ProblemDetails([void Function(ProblemDetailsBuilder) updates]) = _$ProblemDetails;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(ProblemDetails.serializer, this) as Map<String, dynamic>;
  }

  static ProblemDetails? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ProblemDetails.serializer, json);
  }

  static Serializer<ProblemDetails> get serializer => _$problemDetailsSerializer;
}
