// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Day> _$daySerializer = new _$DaySerializer();

class _$DaySerializer implements StructuredSerializer<Day> {
  @override
  final Iterable<Type> types = const [Day, _$Day];
  @override
  final String wireName = 'Day';

  @override
  Iterable<Object?> serialize(Serializers serializers, Day object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.guid;
    if (value != null) {
      result
        ..add('guid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.number;
    if (value != null) {
      result
        ..add('number')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  Day deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DayBuilder();

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
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$Day extends Day {
  @override
  final String? guid;
  @override
  final num? number;
  @override
  final DateTime? date;

  factory _$Day([void Function(DayBuilder)? updates]) =>
      (new DayBuilder()..update(updates)).build();

  _$Day._({this.guid, this.number, this.date}) : super._();

  @override
  Day rebuild(void Function(DayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DayBuilder toBuilder() => new DayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Day &&
        guid == other.guid &&
        number == other.number &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, guid.hashCode), number.hashCode), date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Day')
          ..add('guid', guid)
          ..add('number', number)
          ..add('date', date))
        .toString();
  }
}

class DayBuilder implements Builder<Day, DayBuilder> {
  _$Day? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  num? _number;
  num? get number => _$this._number;
  set number(num? number) => _$this._number = number;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DayBuilder();

  DayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _number = $v.number;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Day other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Day;
  }

  @override
  void update(void Function(DayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Day build() {
    final _$result = _$v ?? new _$Day._(guid: guid, number: number, date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
