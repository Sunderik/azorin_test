import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'project_status_enum.g.dart';

class ProjectStatusEnum extends EnumClass {
  /// В архиве.
  static const ProjectStatusEnum archived = _$archived;

  /// В работе.
  static const ProjectStatusEnum progress = _$progress;

  /// Завершен.
  static const ProjectStatusEnum completed = _$completed;

  /// Новый.
  static const ProjectStatusEnum created = _$created;

  /// Остановлен.
  static const ProjectStatusEnum stopped = _$stopped;

  /// Возвращает идентификатор элемента перечисления приложения.
  int get appId => _appId[this] ?? (throw StateError('No appId for ProjectStatusEnum.$name'));

  static const _appId = const {
    created: 0,
    progress: 1,
    stopped: 2,
    completed: 3,
    archived: 4,
  };

  const ProjectStatusEnum._(String name) : super(name);

  static BuiltSet<ProjectStatusEnum> get values => _$projectStatusEnumValues;
  static ProjectStatusEnum valueOf(String name) => _$projectStatusEnumValueOf(name);
}
