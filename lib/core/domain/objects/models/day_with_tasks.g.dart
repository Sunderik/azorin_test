// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_with_tasks.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DayWithTasks> _$dayWithTasksSerializer =
    new _$DayWithTasksSerializer();

class _$DayWithTasksSerializer implements StructuredSerializer<DayWithTasks> {
  @override
  final Iterable<Type> types = const [DayWithTasks, _$DayWithTasks];
  @override
  final String wireName = 'DayWithTasks';

  @override
  Iterable<Object?> serialize(Serializers serializers, DayWithTasks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dayNumber;
    if (value != null) {
      result
        ..add('dayNumber')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.tasks;
    if (value != null) {
      result
        ..add('tasks')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Task)])));
    }
    return result;
  }

  @override
  DayWithTasks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DayWithTasksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dayNumber':
          result.dayNumber = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'tasks':
          result.tasks.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Task)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$DayWithTasks extends DayWithTasks {
  @override
  final num? dayNumber;
  @override
  final DateTime? date;
  @override
  final BuiltList<Task>? tasks;

  factory _$DayWithTasks([void Function(DayWithTasksBuilder)? updates]) =>
      (new DayWithTasksBuilder()..update(updates)).build();

  _$DayWithTasks._({this.dayNumber, this.date, this.tasks}) : super._();

  @override
  DayWithTasks rebuild(void Function(DayWithTasksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DayWithTasksBuilder toBuilder() => new DayWithTasksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DayWithTasks &&
        dayNumber == other.dayNumber &&
        date == other.date &&
        tasks == other.tasks;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, dayNumber.hashCode), date.hashCode), tasks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DayWithTasks')
          ..add('dayNumber', dayNumber)
          ..add('date', date)
          ..add('tasks', tasks))
        .toString();
  }
}

class DayWithTasksBuilder
    implements Builder<DayWithTasks, DayWithTasksBuilder> {
  _$DayWithTasks? _$v;

  num? _dayNumber;
  num? get dayNumber => _$this._dayNumber;
  set dayNumber(num? dayNumber) => _$this._dayNumber = dayNumber;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  ListBuilder<Task>? _tasks;
  ListBuilder<Task> get tasks => _$this._tasks ??= new ListBuilder<Task>();
  set tasks(ListBuilder<Task>? tasks) => _$this._tasks = tasks;

  DayWithTasksBuilder();

  DayWithTasksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dayNumber = $v.dayNumber;
      _date = $v.date;
      _tasks = $v.tasks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DayWithTasks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DayWithTasks;
  }

  @override
  void update(void Function(DayWithTasksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DayWithTasks build() {
    _$DayWithTasks _$result;
    try {
      _$result = _$v ??
          new _$DayWithTasks._(
              dayNumber: dayNumber, date: date, tasks: _tasks?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tasks';
        _tasks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DayWithTasks', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
