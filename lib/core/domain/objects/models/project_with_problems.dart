import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models/problem_details.dart';
import 'package:tecon_task/core/network/models/base_model.dart';

part 'project_with_problems.g.dart';

abstract class ProjectWithProblems implements BaseModel, Built<ProjectWithProblems, ProjectWithProblemsBuilder> {
  /// Уникальный идентификатор проекта.
  String? get guid;

  /// Полное наименование проекта.
  String? get fullProjectName;

  /// Список проблем.
  BuiltList<ProblemDetails>? get problems;

  ProjectWithProblems._();

  factory ProjectWithProblems([void Function(ProjectWithProblemsBuilder) updates]) = _$ProjectWithProblems;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(ProjectWithProblems.serializer, this) as Map<String, dynamic>;
  }

  static ProjectWithProblems? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ProjectWithProblems.serializer, json);
  }

  static Serializer<ProjectWithProblems> get serializer => _$projectWithProblemsSerializer;
}
