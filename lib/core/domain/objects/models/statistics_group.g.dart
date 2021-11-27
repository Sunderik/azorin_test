// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StatisticsGroup> _$statisticsGroupSerializer =
    new _$StatisticsGroupSerializer();

class _$StatisticsGroupSerializer
    implements StructuredSerializer<StatisticsGroup> {
  @override
  final Iterable<Type> types = const [StatisticsGroup, _$StatisticsGroup];
  @override
  final String wireName = 'StatisticsGroup';

  @override
  Iterable<Object?> serialize(Serializers serializers, StatisticsGroup object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'guid',
      serializers.serialize(object.guid, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.allObjectsLoaded;
    if (value != null) {
      result
        ..add('allObjectsLoaded')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.aSystems;
    if (value != null) {
      result
        ..add('aSystems')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(StatisticsAutoSystem)])));
    }
    value = object.stages;
    if (value != null) {
      result
        ..add('stages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(StatisticsStage)])));
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
  StatisticsGroup deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatisticsGroupBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'guid':
          result.guid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'allObjectsLoaded':
          result.allObjectsLoaded = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'aSystems':
          result.aSystems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(StatisticsAutoSystem)]))!
              as BuiltList<Object>);
          break;
        case 'stages':
          result.stages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(StatisticsStage)]))!
              as BuiltList<Object>);
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

class _$StatisticsGroup extends StatisticsGroup {
  @override
  final String guid;
  @override
  final String name;
  @override
  final bool? allObjectsLoaded;
  @override
  final BuiltList<StatisticsAutoSystem>? aSystems;
  @override
  final BuiltList<StatisticsStage>? stages;
  @override
  final DateTime? lastUpdate;

  factory _$StatisticsGroup([void Function(StatisticsGroupBuilder)? updates]) =>
      (new StatisticsGroupBuilder()..update(updates)).build();

  _$StatisticsGroup._(
      {required this.guid,
      required this.name,
      this.allObjectsLoaded,
      this.aSystems,
      this.stages,
      this.lastUpdate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(guid, 'StatisticsGroup', 'guid');
    BuiltValueNullFieldError.checkNotNull(name, 'StatisticsGroup', 'name');
  }

  @override
  StatisticsGroup rebuild(void Function(StatisticsGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatisticsGroupBuilder toBuilder() =>
      new StatisticsGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatisticsGroup &&
        guid == other.guid &&
        name == other.name &&
        allObjectsLoaded == other.allObjectsLoaded &&
        aSystems == other.aSystems &&
        stages == other.stages &&
        lastUpdate == other.lastUpdate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, guid.hashCode), name.hashCode),
                    allObjectsLoaded.hashCode),
                aSystems.hashCode),
            stages.hashCode),
        lastUpdate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StatisticsGroup')
          ..add('guid', guid)
          ..add('name', name)
          ..add('allObjectsLoaded', allObjectsLoaded)
          ..add('aSystems', aSystems)
          ..add('stages', stages)
          ..add('lastUpdate', lastUpdate))
        .toString();
  }
}

class StatisticsGroupBuilder
    implements Builder<StatisticsGroup, StatisticsGroupBuilder> {
  _$StatisticsGroup? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _allObjectsLoaded;
  bool? get allObjectsLoaded => _$this._allObjectsLoaded;
  set allObjectsLoaded(bool? allObjectsLoaded) =>
      _$this._allObjectsLoaded = allObjectsLoaded;

  ListBuilder<StatisticsAutoSystem>? _aSystems;
  ListBuilder<StatisticsAutoSystem> get aSystems =>
      _$this._aSystems ??= new ListBuilder<StatisticsAutoSystem>();
  set aSystems(ListBuilder<StatisticsAutoSystem>? aSystems) =>
      _$this._aSystems = aSystems;

  ListBuilder<StatisticsStage>? _stages;
  ListBuilder<StatisticsStage> get stages =>
      _$this._stages ??= new ListBuilder<StatisticsStage>();
  set stages(ListBuilder<StatisticsStage>? stages) => _$this._stages = stages;

  DateTime? _lastUpdate;
  DateTime? get lastUpdate => _$this._lastUpdate;
  set lastUpdate(DateTime? lastUpdate) => _$this._lastUpdate = lastUpdate;

  StatisticsGroupBuilder();

  StatisticsGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _name = $v.name;
      _allObjectsLoaded = $v.allObjectsLoaded;
      _aSystems = $v.aSystems?.toBuilder();
      _stages = $v.stages?.toBuilder();
      _lastUpdate = $v.lastUpdate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatisticsGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatisticsGroup;
  }

  @override
  void update(void Function(StatisticsGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StatisticsGroup build() {
    _$StatisticsGroup _$result;
    try {
      _$result = _$v ??
          new _$StatisticsGroup._(
              guid: BuiltValueNullFieldError.checkNotNull(
                  guid, 'StatisticsGroup', 'guid'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'StatisticsGroup', 'name'),
              allObjectsLoaded: allObjectsLoaded,
              aSystems: _aSystems?.build(),
              stages: _stages?.build(),
              lastUpdate: lastUpdate);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aSystems';
        _aSystems?.build();
        _$failedField = 'stages';
        _stages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'StatisticsGroup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
