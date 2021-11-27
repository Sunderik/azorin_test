// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_section.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StatisticsSection> _$statisticsSectionSerializer =
    new _$StatisticsSectionSerializer();

class _$StatisticsSectionSerializer
    implements StructuredSerializer<StatisticsSection> {
  @override
  final Iterable<Type> types = const [StatisticsSection, _$StatisticsSection];
  @override
  final String wireName = 'StatisticsSection';

  @override
  Iterable<Object?> serialize(Serializers serializers, StatisticsSection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sectionGuid;
    if (value != null) {
      result
        ..add('sectionGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sectionName;
    if (value != null) {
      result
        ..add('sectionName')
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
    return result;
  }

  @override
  StatisticsSection deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatisticsSectionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sectionGuid':
          result.sectionGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sectionName':
          result.sectionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'progress':
          result.progress = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$StatisticsSection extends StatisticsSection {
  @override
  final String? sectionGuid;
  @override
  final String? sectionName;
  @override
  final double? progress;

  factory _$StatisticsSection(
          [void Function(StatisticsSectionBuilder)? updates]) =>
      (new StatisticsSectionBuilder()..update(updates)).build();

  _$StatisticsSection._({this.sectionGuid, this.sectionName, this.progress})
      : super._();

  @override
  StatisticsSection rebuild(void Function(StatisticsSectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatisticsSectionBuilder toBuilder() =>
      new StatisticsSectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatisticsSection &&
        sectionGuid == other.sectionGuid &&
        sectionName == other.sectionName &&
        progress == other.progress;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, sectionGuid.hashCode), sectionName.hashCode),
        progress.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StatisticsSection')
          ..add('sectionGuid', sectionGuid)
          ..add('sectionName', sectionName)
          ..add('progress', progress))
        .toString();
  }
}

class StatisticsSectionBuilder
    implements Builder<StatisticsSection, StatisticsSectionBuilder> {
  _$StatisticsSection? _$v;

  String? _sectionGuid;
  String? get sectionGuid => _$this._sectionGuid;
  set sectionGuid(String? sectionGuid) => _$this._sectionGuid = sectionGuid;

  String? _sectionName;
  String? get sectionName => _$this._sectionName;
  set sectionName(String? sectionName) => _$this._sectionName = sectionName;

  double? _progress;
  double? get progress => _$this._progress;
  set progress(double? progress) => _$this._progress = progress;

  StatisticsSectionBuilder();

  StatisticsSectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sectionGuid = $v.sectionGuid;
      _sectionName = $v.sectionName;
      _progress = $v.progress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatisticsSection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatisticsSection;
  }

  @override
  void update(void Function(StatisticsSectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StatisticsSection build() {
    final _$result = _$v ??
        new _$StatisticsSection._(
            sectionGuid: sectionGuid,
            sectionName: sectionName,
            progress: progress);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
