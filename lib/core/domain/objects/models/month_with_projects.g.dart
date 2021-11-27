// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month_with_projects.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MonthWithProjects> _$monthWithProjectsSerializer =
    new _$MonthWithProjectsSerializer();

class _$MonthWithProjectsSerializer
    implements StructuredSerializer<MonthWithProjects> {
  @override
  final Iterable<Type> types = const [MonthWithProjects, _$MonthWithProjects];
  @override
  final String wireName = 'MonthWithProjects';

  @override
  Iterable<Object?> serialize(Serializers serializers, MonthWithProjects object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'date',
      serializers.serialize(object.date,
          specifiedType: const FullType(DateTime)),
    ];
    Object? value;
    value = object.stages;
    if (value != null) {
      result
        ..add('stages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProjectWithTasks)])));
    }
    return result;
  }

  @override
  MonthWithProjects deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MonthWithProjectsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'stages':
          result.stages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProjectWithTasks)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$MonthWithProjects extends MonthWithProjects {
  @override
  final DateTime date;
  @override
  final BuiltList<ProjectWithTasks>? stages;

  factory _$MonthWithProjects(
          [void Function(MonthWithProjectsBuilder)? updates]) =>
      (new MonthWithProjectsBuilder()..update(updates)).build();

  _$MonthWithProjects._({required this.date, this.stages}) : super._() {
    BuiltValueNullFieldError.checkNotNull(date, 'MonthWithProjects', 'date');
  }

  @override
  MonthWithProjects rebuild(void Function(MonthWithProjectsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MonthWithProjectsBuilder toBuilder() =>
      new MonthWithProjectsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MonthWithProjects &&
        date == other.date &&
        stages == other.stages;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, date.hashCode), stages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MonthWithProjects')
          ..add('date', date)
          ..add('stages', stages))
        .toString();
  }
}

class MonthWithProjectsBuilder
    implements Builder<MonthWithProjects, MonthWithProjectsBuilder> {
  _$MonthWithProjects? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  ListBuilder<ProjectWithTasks>? _stages;
  ListBuilder<ProjectWithTasks> get stages =>
      _$this._stages ??= new ListBuilder<ProjectWithTasks>();
  set stages(ListBuilder<ProjectWithTasks>? stages) => _$this._stages = stages;

  MonthWithProjectsBuilder();

  MonthWithProjectsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _stages = $v.stages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MonthWithProjects other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MonthWithProjects;
  }

  @override
  void update(void Function(MonthWithProjectsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MonthWithProjects build() {
    _$MonthWithProjects _$result;
    try {
      _$result = _$v ??
          new _$MonthWithProjects._(
              date: BuiltValueNullFieldError.checkNotNull(
                  date, 'MonthWithProjects', 'date'),
              stages: _stages?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stages';
        _stages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MonthWithProjects', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
