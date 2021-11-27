import 'package:built_value/built_value.dart';
import 'package:tecon_task/core/domain/objects/models/simple_type.dart';

part 'project.g.dart';

abstract class Project implements Built<Project, ProjectBuilder> {
  String? get guid;

  String? get name;

  String? get description;

  DateTime? get timeCreated;

  DateTime? get timeUpdate;

  DateTime? get targetDate;

  num? get currentDay;

  String? get type;

  String? get status;

  String? get progressStatus;

  num? get progress;

  num? get plan;

  SimpleType? get group;

  SimpleType? get factory;

  SimpleType? get aSys;

  String? get groupImage;

  String? get link;

  Project._();
  factory Project([void Function(ProjectBuilder) updates]) = _$Project;
}
