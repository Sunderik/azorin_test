// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubTask> _$subTaskSerializer = new _$SubTaskSerializer();

class _$SubTaskSerializer implements StructuredSerializer<SubTask> {
  @override
  final Iterable<Type> types = const [SubTask, _$SubTask];
  @override
  final String wireName = 'SubTask';

  @override
  Iterable<Object?> serialize(Serializers serializers, SubTask object,
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
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.executor;
    if (value != null) {
      result
        ..add('executor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    return result;
  }

  @override
  SubTask deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubTaskBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'executor':
          result.executor.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
      }
    }

    return result.build();
  }
}

class _$SubTask extends SubTask {
  @override
  final String? guid;
  @override
  final String? name;
  @override
  final String? status;
  @override
  final SimpleType? executor;

  factory _$SubTask([void Function(SubTaskBuilder)? updates]) =>
      (new SubTaskBuilder()..update(updates)).build();

  _$SubTask._({this.guid, this.name, this.status, this.executor}) : super._();

  @override
  SubTask rebuild(void Function(SubTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubTaskBuilder toBuilder() => new SubTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubTask &&
        guid == other.guid &&
        name == other.name &&
        status == other.status &&
        executor == other.executor;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, guid.hashCode), name.hashCode), status.hashCode),
        executor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubTask')
          ..add('guid', guid)
          ..add('name', name)
          ..add('status', status)
          ..add('executor', executor))
        .toString();
  }
}

class SubTaskBuilder implements Builder<SubTask, SubTaskBuilder> {
  _$SubTask? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  SimpleTypeBuilder? _executor;
  SimpleTypeBuilder get executor =>
      _$this._executor ??= new SimpleTypeBuilder();
  set executor(SimpleTypeBuilder? executor) => _$this._executor = executor;

  SubTaskBuilder();

  SubTaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _name = $v.name;
      _status = $v.status;
      _executor = $v.executor?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubTask;
  }

  @override
  void update(void Function(SubTaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubTask build() {
    _$SubTask _$result;
    try {
      _$result = _$v ??
          new _$SubTask._(
              guid: guid,
              name: name,
              status: status,
              executor: _executor?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'executor';
        _executor?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SubTask', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
