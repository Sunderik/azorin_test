// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'executor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Executor> _$executorSerializer = new _$ExecutorSerializer();

class _$ExecutorSerializer implements StructuredSerializer<Executor> {
  @override
  final Iterable<Type> types = const [Executor, _$Executor];
  @override
  final String wireName = 'Executor';

  @override
  Iterable<Object?> serialize(Serializers serializers, Executor object,
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
    value = object.employee;
    if (value != null) {
      result
        ..add('employee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Employee)));
    }
    value = object.unity;
    if (value != null) {
      result
        ..add('unity')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.unityName;
    if (value != null) {
      result
        ..add('unityName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reasonForAbsence;
    if (value != null) {
      result
        ..add('reasonForAbsence')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Executor deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExecutorBuilder();

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
        case 'employee':
          result.employee.replace(serializers.deserialize(value,
              specifiedType: const FullType(Employee))! as Employee);
          break;
        case 'unity':
          result.unity = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'unityName':
          result.unityName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'reasonForAbsence':
          result.reasonForAbsence = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Executor extends Executor {
  @override
  final String? guid;
  @override
  final Employee? employee;
  @override
  final num? unity;
  @override
  final String? unityName;
  @override
  final bool? status;
  @override
  final String? reasonForAbsence;

  factory _$Executor([void Function(ExecutorBuilder)? updates]) =>
      (new ExecutorBuilder()..update(updates)).build();

  _$Executor._(
      {this.guid,
      this.employee,
      this.unity,
      this.unityName,
      this.status,
      this.reasonForAbsence})
      : super._();

  @override
  Executor rebuild(void Function(ExecutorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExecutorBuilder toBuilder() => new ExecutorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Executor &&
        guid == other.guid &&
        employee == other.employee &&
        unity == other.unity &&
        unityName == other.unityName &&
        status == other.status &&
        reasonForAbsence == other.reasonForAbsence;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, guid.hashCode), employee.hashCode),
                    unity.hashCode),
                unityName.hashCode),
            status.hashCode),
        reasonForAbsence.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Executor')
          ..add('guid', guid)
          ..add('employee', employee)
          ..add('unity', unity)
          ..add('unityName', unityName)
          ..add('status', status)
          ..add('reasonForAbsence', reasonForAbsence))
        .toString();
  }
}

class ExecutorBuilder implements Builder<Executor, ExecutorBuilder> {
  _$Executor? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  EmployeeBuilder? _employee;
  EmployeeBuilder get employee => _$this._employee ??= new EmployeeBuilder();
  set employee(EmployeeBuilder? employee) => _$this._employee = employee;

  num? _unity;
  num? get unity => _$this._unity;
  set unity(num? unity) => _$this._unity = unity;

  String? _unityName;
  String? get unityName => _$this._unityName;
  set unityName(String? unityName) => _$this._unityName = unityName;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _reasonForAbsence;
  String? get reasonForAbsence => _$this._reasonForAbsence;
  set reasonForAbsence(String? reasonForAbsence) =>
      _$this._reasonForAbsence = reasonForAbsence;

  ExecutorBuilder();

  ExecutorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _employee = $v.employee?.toBuilder();
      _unity = $v.unity;
      _unityName = $v.unityName;
      _status = $v.status;
      _reasonForAbsence = $v.reasonForAbsence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Executor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Executor;
  }

  @override
  void update(void Function(ExecutorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Executor build() {
    _$Executor _$result;
    try {
      _$result = _$v ??
          new _$Executor._(
              guid: guid,
              employee: _employee?.build(),
              unity: unity,
              unityName: unityName,
              status: status,
              reasonForAbsence: reasonForAbsence);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'employee';
        _employee?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Executor', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
