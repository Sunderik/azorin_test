// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_from_division.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EmployeeFromDivision> _$employeeFromDivisionSerializer =
    new _$EmployeeFromDivisionSerializer();

class _$EmployeeFromDivisionSerializer
    implements StructuredSerializer<EmployeeFromDivision> {
  @override
  final Iterable<Type> types = const [
    EmployeeFromDivision,
    _$EmployeeFromDivision
  ];
  @override
  final String wireName = 'EmployeeFromDivision';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, EmployeeFromDivision object,
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
    value = object.specialty;
    if (value != null) {
      result
        ..add('specialty')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workplace;
    if (value != null) {
      result
        ..add('workplace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reasonForAbsence;
    if (value != null) {
      result
        ..add('reasonForAbsence')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tasks;
    if (value != null) {
      result
        ..add('tasks')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  EmployeeFromDivision deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmployeeFromDivisionBuilder();

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
        case 'specialty':
          result.specialty = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'workplace':
          result.workplace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reasonForAbsence':
          result.reasonForAbsence = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tasks':
          result.tasks = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$EmployeeFromDivision extends EmployeeFromDivision {
  @override
  final String? guid;
  @override
  final String? name;
  @override
  final String? specialty;
  @override
  final String? workplace;
  @override
  final String? reasonForAbsence;
  @override
  final int? tasks;

  factory _$EmployeeFromDivision(
          [void Function(EmployeeFromDivisionBuilder)? updates]) =>
      (new EmployeeFromDivisionBuilder()..update(updates)).build();

  _$EmployeeFromDivision._(
      {this.guid,
      this.name,
      this.specialty,
      this.workplace,
      this.reasonForAbsence,
      this.tasks})
      : super._();

  @override
  EmployeeFromDivision rebuild(
          void Function(EmployeeFromDivisionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmployeeFromDivisionBuilder toBuilder() =>
      new EmployeeFromDivisionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmployeeFromDivision &&
        guid == other.guid &&
        name == other.name &&
        specialty == other.specialty &&
        workplace == other.workplace &&
        reasonForAbsence == other.reasonForAbsence &&
        tasks == other.tasks;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, guid.hashCode), name.hashCode),
                    specialty.hashCode),
                workplace.hashCode),
            reasonForAbsence.hashCode),
        tasks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EmployeeFromDivision')
          ..add('guid', guid)
          ..add('name', name)
          ..add('specialty', specialty)
          ..add('workplace', workplace)
          ..add('reasonForAbsence', reasonForAbsence)
          ..add('tasks', tasks))
        .toString();
  }
}

class EmployeeFromDivisionBuilder
    implements Builder<EmployeeFromDivision, EmployeeFromDivisionBuilder> {
  _$EmployeeFromDivision? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _specialty;
  String? get specialty => _$this._specialty;
  set specialty(String? specialty) => _$this._specialty = specialty;

  String? _workplace;
  String? get workplace => _$this._workplace;
  set workplace(String? workplace) => _$this._workplace = workplace;

  String? _reasonForAbsence;
  String? get reasonForAbsence => _$this._reasonForAbsence;
  set reasonForAbsence(String? reasonForAbsence) =>
      _$this._reasonForAbsence = reasonForAbsence;

  int? _tasks;
  int? get tasks => _$this._tasks;
  set tasks(int? tasks) => _$this._tasks = tasks;

  EmployeeFromDivisionBuilder();

  EmployeeFromDivisionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _name = $v.name;
      _specialty = $v.specialty;
      _workplace = $v.workplace;
      _reasonForAbsence = $v.reasonForAbsence;
      _tasks = $v.tasks;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmployeeFromDivision other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmployeeFromDivision;
  }

  @override
  void update(void Function(EmployeeFromDivisionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EmployeeFromDivision build() {
    final _$result = _$v ??
        new _$EmployeeFromDivision._(
            guid: guid,
            name: name,
            specialty: specialty,
            workplace: workplace,
            reasonForAbsence: reasonForAbsence,
            tasks: tasks);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
