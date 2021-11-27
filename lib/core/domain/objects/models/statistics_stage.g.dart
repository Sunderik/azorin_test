// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_stage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StatisticsStage> _$statisticsStageSerializer =
    new _$StatisticsStageSerializer();

class _$StatisticsStageSerializer
    implements StructuredSerializer<StatisticsStage> {
  @override
  final Iterable<Type> types = const [StatisticsStage, _$StatisticsStage];
  @override
  final String wireName = 'StatisticsStage';

  @override
  Iterable<Object?> serialize(Serializers serializers, StatisticsStage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.factoryGuid;
    if (value != null) {
      result
        ..add('factoryGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.factoryName;
    if (value != null) {
      result
        ..add('factoryName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stageGuid;
    if (value != null) {
      result
        ..add('stageGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stageName;
    if (value != null) {
      result
        ..add('stageName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sections;
    if (value != null) {
      result
        ..add('sections')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(StatisticsSection)])));
    }
    value = object.tasksInWorkCount;
    if (value != null) {
      result
        ..add('tasksInWorkCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.problemsCount;
    if (value != null) {
      result
        ..add('problemsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.memberOnDutyCount;
    if (value != null) {
      result
        ..add('memberOnDutyCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lastUpdate;
    if (value != null) {
      result
        ..add('lastUpdate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  StatisticsStage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatisticsStageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'factoryGuid':
          result.factoryGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'factoryName':
          result.factoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stageGuid':
          result.stageGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stageName':
          result.stageName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sections':
          result.sections.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(StatisticsSection)]))!
              as BuiltList<Object>);
          break;
        case 'tasksInWorkCount':
          result.tasksInWorkCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'problemsCount':
          result.problemsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'memberOnDutyCount':
          result.memberOnDutyCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'lastUpdate':
          result.lastUpdate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$StatisticsStage extends StatisticsStage {
  @override
  final String? factoryGuid;
  @override
  final String? factoryName;
  @override
  final String? stageGuid;
  @override
  final String? stageName;
  @override
  final BuiltList<StatisticsSection>? sections;
  @override
  final int? tasksInWorkCount;
  @override
  final int? problemsCount;
  @override
  final int? memberOnDutyCount;
  @override
  final DateTime? lastUpdate;

  factory _$StatisticsStage([void Function(StatisticsStageBuilder)? updates]) =>
      (new StatisticsStageBuilder()..update(updates)).build();

  _$StatisticsStage._(
      {this.factoryGuid,
      this.factoryName,
      this.stageGuid,
      this.stageName,
      this.sections,
      this.tasksInWorkCount,
      this.problemsCount,
      this.memberOnDutyCount,
      this.lastUpdate})
      : super._();

  @override
  StatisticsStage rebuild(void Function(StatisticsStageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatisticsStageBuilder toBuilder() =>
      new StatisticsStageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatisticsStage &&
        factoryGuid == other.factoryGuid &&
        factoryName == other.factoryName &&
        stageGuid == other.stageGuid &&
        stageName == other.stageName &&
        sections == other.sections &&
        tasksInWorkCount == other.tasksInWorkCount &&
        problemsCount == other.problemsCount &&
        memberOnDutyCount == other.memberOnDutyCount &&
        lastUpdate == other.lastUpdate;
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
                                $jc($jc(0, factoryGuid.hashCode),
                                    factoryName.hashCode),
                                stageGuid.hashCode),
                            stageName.hashCode),
                        sections.hashCode),
                    tasksInWorkCount.hashCode),
                problemsCount.hashCode),
            memberOnDutyCount.hashCode),
        lastUpdate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StatisticsStage')
          ..add('factoryGuid', factoryGuid)
          ..add('factoryName', factoryName)
          ..add('stageGuid', stageGuid)
          ..add('stageName', stageName)
          ..add('sections', sections)
          ..add('tasksInWorkCount', tasksInWorkCount)
          ..add('problemsCount', problemsCount)
          ..add('memberOnDutyCount', memberOnDutyCount)
          ..add('lastUpdate', lastUpdate))
        .toString();
  }
}

class StatisticsStageBuilder
    implements Builder<StatisticsStage, StatisticsStageBuilder> {
  _$StatisticsStage? _$v;

  String? _factoryGuid;
  String? get factoryGuid => _$this._factoryGuid;
  set factoryGuid(String? factoryGuid) => _$this._factoryGuid = factoryGuid;

  String? _factoryName;
  String? get factoryName => _$this._factoryName;
  set factoryName(String? factoryName) => _$this._factoryName = factoryName;

  String? _stageGuid;
  String? get stageGuid => _$this._stageGuid;
  set stageGuid(String? stageGuid) => _$this._stageGuid = stageGuid;

  String? _stageName;
  String? get stageName => _$this._stageName;
  set stageName(String? stageName) => _$this._stageName = stageName;

  ListBuilder<StatisticsSection>? _sections;
  ListBuilder<StatisticsSection> get sections =>
      _$this._sections ??= new ListBuilder<StatisticsSection>();
  set sections(ListBuilder<StatisticsSection>? sections) =>
      _$this._sections = sections;

  int? _tasksInWorkCount;
  int? get tasksInWorkCount => _$this._tasksInWorkCount;
  set tasksInWorkCount(int? tasksInWorkCount) =>
      _$this._tasksInWorkCount = tasksInWorkCount;

  int? _problemsCount;
  int? get problemsCount => _$this._problemsCount;
  set problemsCount(int? problemsCount) =>
      _$this._problemsCount = problemsCount;

  int? _memberOnDutyCount;
  int? get memberOnDutyCount => _$this._memberOnDutyCount;
  set memberOnDutyCount(int? memberOnDutyCount) =>
      _$this._memberOnDutyCount = memberOnDutyCount;

  DateTime? _lastUpdate;
  DateTime? get lastUpdate => _$this._lastUpdate;
  set lastUpdate(DateTime? lastUpdate) => _$this._lastUpdate = lastUpdate;

  StatisticsStageBuilder();

  StatisticsStageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _factoryGuid = $v.factoryGuid;
      _factoryName = $v.factoryName;
      _stageGuid = $v.stageGuid;
      _stageName = $v.stageName;
      _sections = $v.sections?.toBuilder();
      _tasksInWorkCount = $v.tasksInWorkCount;
      _problemsCount = $v.problemsCount;
      _memberOnDutyCount = $v.memberOnDutyCount;
      _lastUpdate = $v.lastUpdate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatisticsStage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatisticsStage;
  }

  @override
  void update(void Function(StatisticsStageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StatisticsStage build() {
    _$StatisticsStage _$result;
    try {
      _$result = _$v ??
          new _$StatisticsStage._(
              factoryGuid: factoryGuid,
              factoryName: factoryName,
              stageGuid: stageGuid,
              stageName: stageName,
              sections: _sections?.build(),
              tasksInWorkCount: tasksInWorkCount,
              problemsCount: problemsCount,
              memberOnDutyCount: memberOnDutyCount,
              lastUpdate: lastUpdate);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sections';
        _sections?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'StatisticsStage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
