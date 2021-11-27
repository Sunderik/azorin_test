// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Month> _$monthSerializer = new _$MonthSerializer();

class _$MonthSerializer implements StructuredSerializer<Month> {
  @override
  final Iterable<Type> types = const [Month, _$Month];
  @override
  final String wireName = 'Month';

  @override
  Iterable<Object?> serialize(Serializers serializers, Month object,
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
  Month deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MonthBuilder();

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
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$Month extends Month {
  @override
  final String? guid;
  @override
  final DateTime? date;

  factory _$Month([void Function(MonthBuilder)? updates]) =>
      (new MonthBuilder()..update(updates)).build();

  _$Month._({this.guid, this.date}) : super._();

  @override
  Month rebuild(void Function(MonthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MonthBuilder toBuilder() => new MonthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Month && guid == other.guid && date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, guid.hashCode), date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Month')
          ..add('guid', guid)
          ..add('date', date))
        .toString();
  }
}

class MonthBuilder implements Builder<Month, MonthBuilder> {
  _$Month? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  MonthBuilder();

  MonthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Month other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Month;
  }

  @override
  void update(void Function(MonthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Month build() {
    final _$result = _$v ?? new _$Month._(guid: guid, date: date);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
