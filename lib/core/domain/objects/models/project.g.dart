// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Project extends Project {
  @override
  final String? guid;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final DateTime? timeCreated;
  @override
  final DateTime? timeUpdate;
  @override
  final DateTime? targetDate;
  @override
  final num? currentDay;
  @override
  final String? type;
  @override
  final String? status;
  @override
  final String? progressStatus;
  @override
  final num? progress;
  @override
  final num? plan;
  @override
  final SimpleType? group;
  @override
  final SimpleType? factory;
  @override
  final SimpleType? aSys;
  @override
  final String? groupImage;
  @override
  final String? link;

  factory _$Project([void Function(ProjectBuilder)? updates]) =>
      (new ProjectBuilder()..update(updates)).build();

  _$Project._(
      {this.guid,
      this.name,
      this.description,
      this.timeCreated,
      this.timeUpdate,
      this.targetDate,
      this.currentDay,
      this.type,
      this.status,
      this.progressStatus,
      this.progress,
      this.plan,
      this.group,
      this.factory,
      this.aSys,
      this.groupImage,
      this.link})
      : super._();

  @override
  Project rebuild(void Function(ProjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectBuilder toBuilder() => new ProjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Project &&
        guid == other.guid &&
        name == other.name &&
        description == other.description &&
        timeCreated == other.timeCreated &&
        timeUpdate == other.timeUpdate &&
        targetDate == other.targetDate &&
        currentDay == other.currentDay &&
        type == other.type &&
        status == other.status &&
        progressStatus == other.progressStatus &&
        progress == other.progress &&
        plan == other.plan &&
        group == other.group &&
        factory == other.factory &&
        aSys == other.aSys &&
        groupImage == other.groupImage &&
        link == other.link;
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        guid
                                                                            .hashCode),
                                                                    name
                                                                        .hashCode),
                                                                description
                                                                    .hashCode),
                                                            timeCreated
                                                                .hashCode),
                                                        timeUpdate.hashCode),
                                                    targetDate.hashCode),
                                                currentDay.hashCode),
                                            type.hashCode),
                                        status.hashCode),
                                    progressStatus.hashCode),
                                progress.hashCode),
                            plan.hashCode),
                        group.hashCode),
                    factory.hashCode),
                aSys.hashCode),
            groupImage.hashCode),
        link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Project')
          ..add('guid', guid)
          ..add('name', name)
          ..add('description', description)
          ..add('timeCreated', timeCreated)
          ..add('timeUpdate', timeUpdate)
          ..add('targetDate', targetDate)
          ..add('currentDay', currentDay)
          ..add('type', type)
          ..add('status', status)
          ..add('progressStatus', progressStatus)
          ..add('progress', progress)
          ..add('plan', plan)
          ..add('group', group)
          ..add('factory', factory)
          ..add('aSys', aSys)
          ..add('groupImage', groupImage)
          ..add('link', link))
        .toString();
  }
}

class ProjectBuilder implements Builder<Project, ProjectBuilder> {
  _$Project? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _timeCreated;
  DateTime? get timeCreated => _$this._timeCreated;
  set timeCreated(DateTime? timeCreated) => _$this._timeCreated = timeCreated;

  DateTime? _timeUpdate;
  DateTime? get timeUpdate => _$this._timeUpdate;
  set timeUpdate(DateTime? timeUpdate) => _$this._timeUpdate = timeUpdate;

  DateTime? _targetDate;
  DateTime? get targetDate => _$this._targetDate;
  set targetDate(DateTime? targetDate) => _$this._targetDate = targetDate;

  num? _currentDay;
  num? get currentDay => _$this._currentDay;
  set currentDay(num? currentDay) => _$this._currentDay = currentDay;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _progressStatus;
  String? get progressStatus => _$this._progressStatus;
  set progressStatus(String? progressStatus) =>
      _$this._progressStatus = progressStatus;

  num? _progress;
  num? get progress => _$this._progress;
  set progress(num? progress) => _$this._progress = progress;

  num? _plan;
  num? get plan => _$this._plan;
  set plan(num? plan) => _$this._plan = plan;

  SimpleTypeBuilder? _group;
  SimpleTypeBuilder get group => _$this._group ??= new SimpleTypeBuilder();
  set group(SimpleTypeBuilder? group) => _$this._group = group;

  SimpleTypeBuilder? _factory;
  SimpleTypeBuilder get factory => _$this._factory ??= new SimpleTypeBuilder();
  set factory(SimpleTypeBuilder? factory) => _$this._factory = factory;

  SimpleTypeBuilder? _aSys;
  SimpleTypeBuilder get aSys => _$this._aSys ??= new SimpleTypeBuilder();
  set aSys(SimpleTypeBuilder? aSys) => _$this._aSys = aSys;

  String? _groupImage;
  String? get groupImage => _$this._groupImage;
  set groupImage(String? groupImage) => _$this._groupImage = groupImage;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  ProjectBuilder();

  ProjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _name = $v.name;
      _description = $v.description;
      _timeCreated = $v.timeCreated;
      _timeUpdate = $v.timeUpdate;
      _targetDate = $v.targetDate;
      _currentDay = $v.currentDay;
      _type = $v.type;
      _status = $v.status;
      _progressStatus = $v.progressStatus;
      _progress = $v.progress;
      _plan = $v.plan;
      _group = $v.group?.toBuilder();
      _factory = $v.factory?.toBuilder();
      _aSys = $v.aSys?.toBuilder();
      _groupImage = $v.groupImage;
      _link = $v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Project other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Project;
  }

  @override
  void update(void Function(ProjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Project build() {
    _$Project _$result;
    try {
      _$result = _$v ??
          new _$Project._(
              guid: guid,
              name: name,
              description: description,
              timeCreated: timeCreated,
              timeUpdate: timeUpdate,
              targetDate: targetDate,
              currentDay: currentDay,
              type: type,
              status: status,
              progressStatus: progressStatus,
              progress: progress,
              plan: plan,
              group: _group?.build(),
              factory: _factory?.build(),
              aSys: _aSys?.build(),
              groupImage: groupImage,
              link: link);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'group';
        _group?.build();
        _$failedField = 'factory';
        _factory?.build();
        _$failedField = 'aSys';
        _aSys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Project', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
