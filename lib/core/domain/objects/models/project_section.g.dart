// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_section.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectSection> _$projectSectionSerializer =
    new _$ProjectSectionSerializer();

class _$ProjectSectionSerializer
    implements StructuredSerializer<ProjectSection> {
  @override
  final Iterable<Type> types = const [ProjectSection, _$ProjectSection];
  @override
  final String wireName = 'ProjectSection';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProjectSection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.section;
    if (value != null) {
      result
        ..add('section')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.project;
    if (value != null) {
      result
        ..add('project')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.factory;
    if (value != null) {
      result
        ..add('factory')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.group;
    if (value != null) {
      result
        ..add('group')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stage;
    if (value != null) {
      result
        ..add('stage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.marking;
    if (value != null) {
      result
        ..add('marking')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.progress;
    if (value != null) {
      result
        ..add('progress')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.timeCreated;
    if (value != null) {
      result
        ..add('timeCreated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.targetDate;
    if (value != null) {
      result
        ..add('targetDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.groupImage;
    if (value != null) {
      result
        ..add('groupImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProjectSection deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectSectionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'section':
          result.section.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'project':
          result.project.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'factory':
          result.factory.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'group':
          result.group.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stage':
          result.stage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'marking':
          result.marking = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'progress':
          result.progress = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'timeCreated':
          result.timeCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'targetDate':
          result.targetDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'groupImage':
          result.groupImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectSection extends ProjectSection {
  @override
  final SimpleType? section;
  @override
  final SimpleType? project;
  @override
  final SimpleType? factory;
  @override
  final SimpleType? group;
  @override
  final String? description;
  @override
  final String? stage;
  @override
  final String? status;
  @override
  final String? marking;
  @override
  final num? progress;
  @override
  final DateTime? timeCreated;
  @override
  final DateTime? targetDate;
  @override
  final String? groupImage;

  factory _$ProjectSection([void Function(ProjectSectionBuilder)? updates]) =>
      (new ProjectSectionBuilder()..update(updates)).build();

  _$ProjectSection._(
      {this.section,
      this.project,
      this.factory,
      this.group,
      this.description,
      this.stage,
      this.status,
      this.marking,
      this.progress,
      this.timeCreated,
      this.targetDate,
      this.groupImage})
      : super._();

  @override
  ProjectSection rebuild(void Function(ProjectSectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectSectionBuilder toBuilder() =>
      new ProjectSectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectSection &&
        section == other.section &&
        project == other.project &&
        factory == other.factory &&
        group == other.group &&
        description == other.description &&
        stage == other.stage &&
        status == other.status &&
        marking == other.marking &&
        progress == other.progress &&
        timeCreated == other.timeCreated &&
        targetDate == other.targetDate &&
        groupImage == other.groupImage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, section.hashCode),
                                                project.hashCode),
                                            factory.hashCode),
                                        group.hashCode),
                                    description.hashCode),
                                stage.hashCode),
                            status.hashCode),
                        marking.hashCode),
                    progress.hashCode),
                timeCreated.hashCode),
            targetDate.hashCode),
        groupImage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectSection')
          ..add('section', section)
          ..add('project', project)
          ..add('factory', factory)
          ..add('group', group)
          ..add('description', description)
          ..add('stage', stage)
          ..add('status', status)
          ..add('marking', marking)
          ..add('progress', progress)
          ..add('timeCreated', timeCreated)
          ..add('targetDate', targetDate)
          ..add('groupImage', groupImage))
        .toString();
  }
}

class ProjectSectionBuilder
    implements Builder<ProjectSection, ProjectSectionBuilder> {
  _$ProjectSection? _$v;

  SimpleTypeBuilder? _section;
  SimpleTypeBuilder get section => _$this._section ??= new SimpleTypeBuilder();
  set section(SimpleTypeBuilder? section) => _$this._section = section;

  SimpleTypeBuilder? _project;
  SimpleTypeBuilder get project => _$this._project ??= new SimpleTypeBuilder();
  set project(SimpleTypeBuilder? project) => _$this._project = project;

  SimpleTypeBuilder? _factory;
  SimpleTypeBuilder get factory => _$this._factory ??= new SimpleTypeBuilder();
  set factory(SimpleTypeBuilder? factory) => _$this._factory = factory;

  SimpleTypeBuilder? _group;
  SimpleTypeBuilder get group => _$this._group ??= new SimpleTypeBuilder();
  set group(SimpleTypeBuilder? group) => _$this._group = group;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _stage;
  String? get stage => _$this._stage;
  set stage(String? stage) => _$this._stage = stage;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _marking;
  String? get marking => _$this._marking;
  set marking(String? marking) => _$this._marking = marking;

  num? _progress;
  num? get progress => _$this._progress;
  set progress(num? progress) => _$this._progress = progress;

  DateTime? _timeCreated;
  DateTime? get timeCreated => _$this._timeCreated;
  set timeCreated(DateTime? timeCreated) => _$this._timeCreated = timeCreated;

  DateTime? _targetDate;
  DateTime? get targetDate => _$this._targetDate;
  set targetDate(DateTime? targetDate) => _$this._targetDate = targetDate;

  String? _groupImage;
  String? get groupImage => _$this._groupImage;
  set groupImage(String? groupImage) => _$this._groupImage = groupImage;

  ProjectSectionBuilder();

  ProjectSectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _section = $v.section?.toBuilder();
      _project = $v.project?.toBuilder();
      _factory = $v.factory?.toBuilder();
      _group = $v.group?.toBuilder();
      _description = $v.description;
      _stage = $v.stage;
      _status = $v.status;
      _marking = $v.marking;
      _progress = $v.progress;
      _timeCreated = $v.timeCreated;
      _targetDate = $v.targetDate;
      _groupImage = $v.groupImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectSection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectSection;
  }

  @override
  void update(void Function(ProjectSectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectSection build() {
    _$ProjectSection _$result;
    try {
      _$result = _$v ??
          new _$ProjectSection._(
              section: _section?.build(),
              project: _project?.build(),
              factory: _factory?.build(),
              group: _group?.build(),
              description: description,
              stage: stage,
              status: status,
              marking: marking,
              progress: progress,
              timeCreated: timeCreated,
              targetDate: targetDate,
              groupImage: groupImage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'section';
        _section?.build();
        _$failedField = 'project';
        _project?.build();
        _$failedField = 'factory';
        _factory?.build();
        _$failedField = 'group';
        _group?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProjectSection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
