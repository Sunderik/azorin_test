import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'project_progress_status_enum.g.dart';

/// Перечисление 'Статусы прогресса проекта'.
class ProjectProgressStatusEnum extends EnumClass {
  /// Статус прогресса проекта - "Опережение".
  static const ProjectProgressStatusEnum advance = _$outrunning;

  /// Статус прогресса проекта - "Опоздание".
  static const ProjectProgressStatusEnum backlog = _$delaying;

  /// Статус прогресса проекта - "По плану".
  static const ProjectProgressStatusEnum plan = _$timely;

  int get appId => _appId[this] ?? (throw StateError('No appId for Project Progress.$name'));

  static const _appId = const {
    advance: 0,
    backlog: 1,
    plan: 2,
  };

  const ProjectProgressStatusEnum._(String name) : super(name);

  static BuiltSet<ProjectProgressStatusEnum> get values => _$projectProgressStatusEnumValues;
  static ProjectProgressStatusEnum valueOf(String name) => _$projectProgressStatusEnumValueOf(name);
}
