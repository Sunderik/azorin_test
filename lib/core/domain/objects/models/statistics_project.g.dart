// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_project.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StatisticsProject> _$statisticsProjectSerializer =
    new _$StatisticsProjectSerializer();

class _$StatisticsProjectSerializer
    implements StructuredSerializer<StatisticsProject> {
  @override
  final Iterable<Type> types = const [StatisticsProject, _$StatisticsProject];
  @override
  final String wireName = 'StatisticsProject';

  @override
  Iterable<Object?> serialize(Serializers serializers, StatisticsProject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.projectGuid;
    if (value != null) {
      result
        ..add('projectGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectType;
    if (value != null) {
      result
        ..add('projectType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectTypeGuid;
    if (value != null) {
      result
        ..add('projectTypeGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.progress;
    if (value != null) {
      result
        ..add('progress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.plan;
    if (value != null) {
      result
        ..add('plan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.currentDay;
    if (value != null) {
      result
        ..add('currentDay')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.progressStatus;
    if (value != null) {
      result
        ..add('progressStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.progressDays;
    if (value != null) {
      result
        ..add('progressDays')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    return result;
  }

  @override
  StatisticsProject deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatisticsProjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'projectGuid':
          result.projectGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projectType':
          result.projectType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projectTypeGuid':
          result.projectTypeGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'progress':
          result.progress = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'plan':
          result.plan = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'currentDay':
          result.currentDay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'progressStatus':
          result.progressStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'progressDays':
          result.progressDays = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
      }
    }

    return result.build();
  }
}

class _$StatisticsProject extends StatisticsProject {
  @override
  final String? projectGuid;
  @override
  final String? projectType;
  @override
  final String? projectTypeGuid;
  @override
  final double? progress;
  @override
  final double? plan;
  @override
  final int? currentDay;
  @override
  final String? progressStatus;
  @override
  final num? progressDays;

  factory _$StatisticsProject(
          [void Function(StatisticsProjectBuilder)? updates]) =>
      (new StatisticsProjectBuilder()..update(updates)).build();

  _$StatisticsProject._(
      {this.projectGuid,
      this.projectType,
      this.projectTypeGuid,
      this.progress,
      this.plan,
      this.currentDay,
      this.progressStatus,
      this.progressDays})
      : super._();

  @override
  StatisticsProject rebuild(void Function(StatisticsProjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatisticsProjectBuilder toBuilder() =>
      new StatisticsProjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatisticsProject &&
        projectGuid == other.projectGuid &&
        projectType == other.projectType &&
        projectTypeGuid == other.projectTypeGuid &&
        progress == other.progress &&
        plan == other.plan &&
        currentDay == other.currentDay &&
        progressStatus == other.progressStatus &&
        progressDays == other.progressDays;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, projectGuid.hashCode),
                                projectType.hashCode),
                            projectTypeGuid.hashCode),
                        progress.hashCode),
                    plan.hashCode),
                currentDay.hashCode),
            progressStatus.hashCode),
        progressDays.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StatisticsProject')
          ..add('projectGuid', projectGuid)
          ..add('projectType', projectType)
          ..add('projectTypeGuid', projectTypeGuid)
          ..add('progress', progress)
          ..add('plan', plan)
          ..add('currentDay', currentDay)
          ..add('progressStatus', progressStatus)
          ..add('progressDays', progressDays))
        .toString();
  }
}

class StatisticsProjectBuilder
    implements Builder<StatisticsProject, StatisticsProjectBuilder> {
  _$StatisticsProject? _$v;

  String? _projectGuid;
  String? get projectGuid => _$this._projectGuid;
  set projectGuid(String? projectGuid) => _$this._projectGuid = projectGuid;

  String? _projectType;
  String? get projectType => _$this._projectType;
  set projectType(String? projectType) => _$this._projectType = projectType;

  String? _projectTypeGuid;
  String? get projectTypeGuid => _$this._projectTypeGuid;
  set projectTypeGuid(String? projectTypeGuid) =>
      _$this._projectTypeGuid = projectTypeGuid;

  double? _progress;
  double? get progress => _$this._progress;
  set progress(double? progress) => _$this._progress = progress;

  double? _plan;
  double? get plan => _$this._plan;
  set plan(double? plan) => _$this._plan = plan;

  int? _currentDay;
  int? get currentDay => _$this._currentDay;
  set currentDay(int? currentDay) => _$this._currentDay = currentDay;

  String? _progressStatus;
  String? get progressStatus => _$this._progressStatus;
  set progressStatus(String? progressStatus) =>
      _$this._progressStatus = progressStatus;

  num? _progressDays;
  num? get progressDays => _$this._progressDays;
  set progressDays(num? progressDays) => _$this._progressDays = progressDays;

  StatisticsProjectBuilder();

  StatisticsProjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projectGuid = $v.projectGuid;
      _projectType = $v.projectType;
      _projectTypeGuid = $v.projectTypeGuid;
      _progress = $v.progress;
      _plan = $v.plan;
      _currentDay = $v.currentDay;
      _progressStatus = $v.progressStatus;
      _progressDays = $v.progressDays;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatisticsProject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatisticsProject;
  }

  @override
  void update(void Function(StatisticsProjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StatisticsProject build() {
    final _$result = _$v ??
        new _$StatisticsProject._(
            projectGuid: projectGuid,
            projectType: projectType,
            projectTypeGuid: projectTypeGuid,
            progress: progress,
            plan: plan,
            currentDay: currentDay,
            progressStatus: progressStatus,
            progressDays: progressDays);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
