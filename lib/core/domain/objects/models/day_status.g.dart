// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DayStatus> _$dayStatusSerializer = new _$DayStatusSerializer();

class _$DayStatusSerializer implements StructuredSerializer<DayStatus> {
  @override
  final Iterable<Type> types = const [DayStatus, _$DayStatus];
  @override
  final String wireName = 'DayStatus';

  @override
  Iterable<Object?> serialize(Serializers serializers, DayStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.statuses;
    if (value != null) {
      result
        ..add('statuses')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  DayStatus deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DayStatusBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'statuses':
          result.statuses.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$DayStatus extends DayStatus {
  @override
  final num? day;
  @override
  final DateTime? date;
  @override
  final BuiltList<String>? statuses;

  factory _$DayStatus([void Function(DayStatusBuilder)? updates]) =>
      (new DayStatusBuilder()..update(updates)).build();

  _$DayStatus._({this.day, this.date, this.statuses}) : super._();

  @override
  DayStatus rebuild(void Function(DayStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DayStatusBuilder toBuilder() => new DayStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DayStatus &&
        day == other.day &&
        date == other.date &&
        statuses == other.statuses;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, day.hashCode), date.hashCode), statuses.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DayStatus')
          ..add('day', day)
          ..add('date', date)
          ..add('statuses', statuses))
        .toString();
  }
}

class DayStatusBuilder implements Builder<DayStatus, DayStatusBuilder> {
  _$DayStatus? _$v;

  num? _day;
  num? get day => _$this._day;
  set day(num? day) => _$this._day = day;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  ListBuilder<String>? _statuses;
  ListBuilder<String> get statuses =>
      _$this._statuses ??= new ListBuilder<String>();
  set statuses(ListBuilder<String>? statuses) => _$this._statuses = statuses;

  DayStatusBuilder();

  DayStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _day = $v.day;
      _date = $v.date;
      _statuses = $v.statuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DayStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DayStatus;
  }

  @override
  void update(void Function(DayStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DayStatus build() {
    _$DayStatus _$result;
    try {
      _$result = _$v ??
          new _$DayStatus._(day: day, date: date, statuses: _statuses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'statuses';
        _statuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DayStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
