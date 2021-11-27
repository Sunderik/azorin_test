// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division_workload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DivisionWorkload> _$divisionWorkloadSerializer =
    new _$DivisionWorkloadSerializer();

class _$DivisionWorkloadSerializer
    implements StructuredSerializer<DivisionWorkload> {
  @override
  final Iterable<Type> types = const [DivisionWorkload, _$DivisionWorkload];
  @override
  final String wireName = 'DivisionWorkload';

  @override
  Iterable<Object?> serialize(Serializers serializers, DivisionWorkload object,
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.employees;
    if (value != null) {
      result
        ..add('employees')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(EmployeeFromDivision)])));
    }
    return result;
  }

  @override
  DivisionWorkload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DivisionWorkloadBuilder();

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
        case 'employees':
          result.employees.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(EmployeeFromDivision)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$DivisionWorkload extends DivisionWorkload {
  @override
  final String? guid;
  @override
  final String? name;
  @override
  final BuiltList<EmployeeFromDivision>? employees;

  factory _$DivisionWorkload(
          [void Function(DivisionWorkloadBuilder)? updates]) =>
      (new DivisionWorkloadBuilder()..update(updates)).build();

  _$DivisionWorkload._({this.guid, this.name, this.employees}) : super._();

  @override
  DivisionWorkload rebuild(void Function(DivisionWorkloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DivisionWorkloadBuilder toBuilder() =>
      new DivisionWorkloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DivisionWorkload &&
        guid == other.guid &&
        name == other.name &&
        employees == other.employees;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, guid.hashCode), name.hashCode), employees.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DivisionWorkload')
          ..add('guid', guid)
          ..add('name', name)
          ..add('employees', employees))
        .toString();
  }
}

class DivisionWorkloadBuilder
    implements Builder<DivisionWorkload, DivisionWorkloadBuilder> {
  _$DivisionWorkload? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<EmployeeFromDivision>? _employees;
  ListBuilder<EmployeeFromDivision> get employees =>
      _$this._employees ??= new ListBuilder<EmployeeFromDivision>();
  set employees(ListBuilder<EmployeeFromDivision>? employees) =>
      _$this._employees = employees;

  DivisionWorkloadBuilder();

  DivisionWorkloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _name = $v.name;
      _employees = $v.employees?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DivisionWorkload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DivisionWorkload;
  }

  @override
  void update(void Function(DivisionWorkloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DivisionWorkload build() {
    _$DivisionWorkload _$result;
    try {
      _$result = _$v ??
          new _$DivisionWorkload._(
              guid: guid, name: name, employees: _employees?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'employees';
        _employees?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DivisionWorkload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
