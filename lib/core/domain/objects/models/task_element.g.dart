// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_element.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TaskElement> _$taskElementSerializer = new _$TaskElementSerializer();

class _$TaskElementSerializer implements StructuredSerializer<TaskElement> {
  @override
  final Iterable<Type> types = const [TaskElement, _$TaskElement];
  @override
  final String wireName = 'TaskElement';

  @override
  Iterable<Object?> serialize(Serializers serializers, TaskElement object,
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
    value = object.number;
    if (value != null) {
      result
        ..add('number')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.countNorm;
    if (value != null) {
      result
        ..add('countNorm')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.units;
    if (value != null) {
      result
        ..add('units')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectMembers;
    if (value != null) {
      result
        ..add('projectMembers')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  TaskElement deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaskElementBuilder();

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
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'countNorm':
          result.countNorm = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'units':
          result.units = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projectMembers':
          result.projectMembers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TaskElement extends TaskElement {
  @override
  final String? guid;
  @override
  final String? name;
  @override
  final num? number;
  @override
  final num? duration;
  @override
  final num? countNorm;
  @override
  final String? units;
  @override
  final BuiltList<String>? projectMembers;

  factory _$TaskElement([void Function(TaskElementBuilder)? updates]) =>
      (new TaskElementBuilder()..update(updates)).build();

  _$TaskElement._(
      {this.guid,
      this.name,
      this.number,
      this.duration,
      this.countNorm,
      this.units,
      this.projectMembers})
      : super._();

  @override
  TaskElement rebuild(void Function(TaskElementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskElementBuilder toBuilder() => new TaskElementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskElement &&
        guid == other.guid &&
        name == other.name &&
        number == other.number &&
        duration == other.duration &&
        countNorm == other.countNorm &&
        units == other.units &&
        projectMembers == other.projectMembers;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, guid.hashCode), name.hashCode),
                        number.hashCode),
                    duration.hashCode),
                countNorm.hashCode),
            units.hashCode),
        projectMembers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TaskElement')
          ..add('guid', guid)
          ..add('name', name)
          ..add('number', number)
          ..add('duration', duration)
          ..add('countNorm', countNorm)
          ..add('units', units)
          ..add('projectMembers', projectMembers))
        .toString();
  }
}

class TaskElementBuilder implements Builder<TaskElement, TaskElementBuilder> {
  _$TaskElement? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  num? _number;
  num? get number => _$this._number;
  set number(num? number) => _$this._number = number;

  num? _duration;
  num? get duration => _$this._duration;
  set duration(num? duration) => _$this._duration = duration;

  num? _countNorm;
  num? get countNorm => _$this._countNorm;
  set countNorm(num? countNorm) => _$this._countNorm = countNorm;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  ListBuilder<String>? _projectMembers;
  ListBuilder<String> get projectMembers =>
      _$this._projectMembers ??= new ListBuilder<String>();
  set projectMembers(ListBuilder<String>? projectMembers) =>
      _$this._projectMembers = projectMembers;

  TaskElementBuilder();

  TaskElementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _name = $v.name;
      _number = $v.number;
      _duration = $v.duration;
      _countNorm = $v.countNorm;
      _units = $v.units;
      _projectMembers = $v.projectMembers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskElement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TaskElement;
  }

  @override
  void update(void Function(TaskElementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TaskElement build() {
    _$TaskElement _$result;
    try {
      _$result = _$v ??
          new _$TaskElement._(
              guid: guid,
              name: name,
              number: number,
              duration: duration,
              countNorm: countNorm,
              units: units,
              projectMembers: _projectMembers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'projectMembers';
        _projectMembers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TaskElement', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
