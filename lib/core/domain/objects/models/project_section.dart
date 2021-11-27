import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/core.dart';

part 'project_section.g.dart';

/// Объект переноса данных проекта раздела стадии
abstract class ProjectSection implements Built<ProjectSection, ProjectSectionBuilder> {
  /// Уникальный идентификатор раздела стадии и его наименование (например, "ЗСМ")
  SimpleType? get section;

  /// Уникальный идентификатор проекта стадии и его наименование (например, "Блок 10 ЭК-7")
  SimpleType? get project;

  /// Уникальный идентификатор предприятия и его наименование (например, "ТЭЦ-333")
  SimpleType? get factory;

  /// Уникальный идентификатор группы предприятий и её наименование (например, "МОЭК")
  SimpleType? get group;

  /// Описание проекта стадии
  String? get description;

  /// Наименование стадии (например, "Стадия Р")
  String? get stage;

  /// Уникальный идентификатор статуса проекта стадии
  String? get status;

  /// Маркировка раздела (например, "001-21-ТИ-ЗСМ07")
  String? get marking;

  /// Текущее значение прогресса на проекте
  num? get progress;

  /// Время и дата создания проекта
  DateTime? get timeCreated;

  /// Дата "планируемого" завершения проекта
  DateTime? get targetDate;

  /// Изображение структуры
  String? get groupImage;

  ProjectSection._();

  factory ProjectSection([void Function(ProjectSectionBuilder) updates]) = _$ProjectSection;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(ProjectSection.serializer, this) as Map<String, dynamic>;
  }

  static ProjectSection? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ProjectSection.serializer, json);
  }

  static Serializer<ProjectSection> get serializer => _$projectSectionSerializer;
}
