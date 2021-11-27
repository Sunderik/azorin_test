// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_auto_system.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StatisticsAutoSystem> _$statisticsAutoSystemSerializer =
    new _$StatisticsAutoSystemSerializer();

class _$StatisticsAutoSystemSerializer
    implements StructuredSerializer<StatisticsAutoSystem> {
  @override
  final Iterable<Type> types = const [
    StatisticsAutoSystem,
    _$StatisticsAutoSystem
  ];
  @override
  final String wireName = 'StatisticsAutoSystem';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, StatisticsAutoSystem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.aSysGuid;
    if (value != null) {
      result
        ..add('aSysGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aSysName;
    if (value != null) {
      result
        ..add('aSysName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
    value = object.executorsOnShiftCount;
    if (value != null) {
      result
        ..add('executorsOnShiftCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.projects;
    if (value != null) {
      result
        ..add('projects')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(StatisticsProject)])));
    }
    value = object.problemLogisticsCount;
    if (value != null) {
      result
        ..add('problemLogisticsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.problemProjectCount;
    if (value != null) {
      result
        ..add('problemProjectCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.problemOtherCount;
    if (value != null) {
      result
        ..add('problemOtherCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.deltaProblemLogisticsCount;
    if (value != null) {
      result
        ..add('deltaProblemLogisticsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.deltaProblemProjectCount;
    if (value != null) {
      result
        ..add('deltaProblemProjectCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.deltaProblemOtherCount;
    if (value != null) {
      result
        ..add('deltaProblemOtherCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  StatisticsAutoSystem deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatisticsAutoSystemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'aSysGuid':
          result.aSysGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'aSysName':
          result.aSysName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'factoryGuid':
          result.factoryGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'factoryName':
          result.factoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'executorsOnShiftCount':
          result.executorsOnShiftCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'projects':
          result.projects.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(StatisticsProject)]))!
              as BuiltList<Object>);
          break;
        case 'problemLogisticsCount':
          result.problemLogisticsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'problemProjectCount':
          result.problemProjectCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'problemOtherCount':
          result.problemOtherCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deltaProblemLogisticsCount':
          result.deltaProblemLogisticsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deltaProblemProjectCount':
          result.deltaProblemProjectCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deltaProblemOtherCount':
          result.deltaProblemOtherCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$StatisticsAutoSystem extends StatisticsAutoSystem {
  @override
  final String? aSysGuid;
  @override
  final String? aSysName;
  @override
  final String? factoryGuid;
  @override
  final String? factoryName;
  @override
  final int? executorsOnShiftCount;
  @override
  final BuiltList<StatisticsProject>? projects;
  @override
  final int? problemLogisticsCount;
  @override
  final int? problemProjectCount;
  @override
  final int? problemOtherCount;
  @override
  final int? deltaProblemLogisticsCount;
  @override
  final int? deltaProblemProjectCount;
  @override
  final int? deltaProblemOtherCount;

  factory _$StatisticsAutoSystem(
          [void Function(StatisticsAutoSystemBuilder)? updates]) =>
      (new StatisticsAutoSystemBuilder()..update(updates)).build();

  _$StatisticsAutoSystem._(
      {this.aSysGuid,
      this.aSysName,
      this.factoryGuid,
      this.factoryName,
      this.executorsOnShiftCount,
      this.projects,
      this.problemLogisticsCount,
      this.problemProjectCount,
      this.problemOtherCount,
      this.deltaProblemLogisticsCount,
      this.deltaProblemProjectCount,
      this.deltaProblemOtherCount})
      : super._();

  @override
  StatisticsAutoSystem rebuild(
          void Function(StatisticsAutoSystemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatisticsAutoSystemBuilder toBuilder() =>
      new StatisticsAutoSystemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatisticsAutoSystem &&
        aSysGuid == other.aSysGuid &&
        aSysName == other.aSysName &&
        factoryGuid == other.factoryGuid &&
        factoryName == other.factoryName &&
        executorsOnShiftCount == other.executorsOnShiftCount &&
        projects == other.projects &&
        problemLogisticsCount == other.problemLogisticsCount &&
        problemProjectCount == other.problemProjectCount &&
        problemOtherCount == other.problemOtherCount &&
        deltaProblemLogisticsCount == other.deltaProblemLogisticsCount &&
        deltaProblemProjectCount == other.deltaProblemProjectCount &&
        deltaProblemOtherCount == other.deltaProblemOtherCount;
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
                                            $jc($jc(0, aSysGuid.hashCode),
                                                aSysName.hashCode),
                                            factoryGuid.hashCode),
                                        factoryName.hashCode),
                                    executorsOnShiftCount.hashCode),
                                projects.hashCode),
                            problemLogisticsCount.hashCode),
                        problemProjectCount.hashCode),
                    problemOtherCount.hashCode),
                deltaProblemLogisticsCount.hashCode),
            deltaProblemProjectCount.hashCode),
        deltaProblemOtherCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StatisticsAutoSystem')
          ..add('aSysGuid', aSysGuid)
          ..add('aSysName', aSysName)
          ..add('factoryGuid', factoryGuid)
          ..add('factoryName', factoryName)
          ..add('executorsOnShiftCount', executorsOnShiftCount)
          ..add('projects', projects)
          ..add('problemLogisticsCount', problemLogisticsCount)
          ..add('problemProjectCount', problemProjectCount)
          ..add('problemOtherCount', problemOtherCount)
          ..add('deltaProblemLogisticsCount', deltaProblemLogisticsCount)
          ..add('deltaProblemProjectCount', deltaProblemProjectCount)
          ..add('deltaProblemOtherCount', deltaProblemOtherCount))
        .toString();
  }
}

class StatisticsAutoSystemBuilder
    implements Builder<StatisticsAutoSystem, StatisticsAutoSystemBuilder> {
  _$StatisticsAutoSystem? _$v;

  String? _aSysGuid;
  String? get aSysGuid => _$this._aSysGuid;
  set aSysGuid(String? aSysGuid) => _$this._aSysGuid = aSysGuid;

  String? _aSysName;
  String? get aSysName => _$this._aSysName;
  set aSysName(String? aSysName) => _$this._aSysName = aSysName;

  String? _factoryGuid;
  String? get factoryGuid => _$this._factoryGuid;
  set factoryGuid(String? factoryGuid) => _$this._factoryGuid = factoryGuid;

  String? _factoryName;
  String? get factoryName => _$this._factoryName;
  set factoryName(String? factoryName) => _$this._factoryName = factoryName;

  int? _executorsOnShiftCount;
  int? get executorsOnShiftCount => _$this._executorsOnShiftCount;
  set executorsOnShiftCount(int? executorsOnShiftCount) =>
      _$this._executorsOnShiftCount = executorsOnShiftCount;

  ListBuilder<StatisticsProject>? _projects;
  ListBuilder<StatisticsProject> get projects =>
      _$this._projects ??= new ListBuilder<StatisticsProject>();
  set projects(ListBuilder<StatisticsProject>? projects) =>
      _$this._projects = projects;

  int? _problemLogisticsCount;
  int? get problemLogisticsCount => _$this._problemLogisticsCount;
  set problemLogisticsCount(int? problemLogisticsCount) =>
      _$this._problemLogisticsCount = problemLogisticsCount;

  int? _problemProjectCount;
  int? get problemProjectCount => _$this._problemProjectCount;
  set problemProjectCount(int? problemProjectCount) =>
      _$this._problemProjectCount = problemProjectCount;

  int? _problemOtherCount;
  int? get problemOtherCount => _$this._problemOtherCount;
  set problemOtherCount(int? problemOtherCount) =>
      _$this._problemOtherCount = problemOtherCount;

  int? _deltaProblemLogisticsCount;
  int? get deltaProblemLogisticsCount => _$this._deltaProblemLogisticsCount;
  set deltaProblemLogisticsCount(int? deltaProblemLogisticsCount) =>
      _$this._deltaProblemLogisticsCount = deltaProblemLogisticsCount;

  int? _deltaProblemProjectCount;
  int? get deltaProblemProjectCount => _$this._deltaProblemProjectCount;
  set deltaProblemProjectCount(int? deltaProblemProjectCount) =>
      _$this._deltaProblemProjectCount = deltaProblemProjectCount;

  int? _deltaProblemOtherCount;
  int? get deltaProblemOtherCount => _$this._deltaProblemOtherCount;
  set deltaProblemOtherCount(int? deltaProblemOtherCount) =>
      _$this._deltaProblemOtherCount = deltaProblemOtherCount;

  StatisticsAutoSystemBuilder();

  StatisticsAutoSystemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aSysGuid = $v.aSysGuid;
      _aSysName = $v.aSysName;
      _factoryGuid = $v.factoryGuid;
      _factoryName = $v.factoryName;
      _executorsOnShiftCount = $v.executorsOnShiftCount;
      _projects = $v.projects?.toBuilder();
      _problemLogisticsCount = $v.problemLogisticsCount;
      _problemProjectCount = $v.problemProjectCount;
      _problemOtherCount = $v.problemOtherCount;
      _deltaProblemLogisticsCount = $v.deltaProblemLogisticsCount;
      _deltaProblemProjectCount = $v.deltaProblemProjectCount;
      _deltaProblemOtherCount = $v.deltaProblemOtherCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatisticsAutoSystem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatisticsAutoSystem;
  }

  @override
  void update(void Function(StatisticsAutoSystemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StatisticsAutoSystem build() {
    _$StatisticsAutoSystem _$result;
    try {
      _$result = _$v ??
          new _$StatisticsAutoSystem._(
              aSysGuid: aSysGuid,
              aSysName: aSysName,
              factoryGuid: factoryGuid,
              factoryName: factoryName,
              executorsOnShiftCount: executorsOnShiftCount,
              projects: _projects?.build(),
              problemLogisticsCount: problemLogisticsCount,
              problemProjectCount: problemProjectCount,
              problemOtherCount: problemOtherCount,
              deltaProblemLogisticsCount: deltaProblemLogisticsCount,
              deltaProblemProjectCount: deltaProblemProjectCount,
              deltaProblemOtherCount: deltaProblemOtherCount);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'projects';
        _projects?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'StatisticsAutoSystem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
