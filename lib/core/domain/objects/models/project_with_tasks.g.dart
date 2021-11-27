// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_with_tasks.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectWithTasks> _$projectWithTasksSerializer =
    new _$ProjectWithTasksSerializer();

class _$ProjectWithTasksSerializer
    implements StructuredSerializer<ProjectWithTasks> {
  @override
  final Iterable<Type> types = const [ProjectWithTasks, _$ProjectWithTasks];
  @override
  final String wireName = 'ProjectWithTasks';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProjectWithTasks object,
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
    value = object.tasks;
    if (value != null) {
      result
        ..add('tasks')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(TaskDetails)])));
    }
    return result;
  }

  @override
  ProjectWithTasks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectWithTasksBuilder();

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
        case 'tasks':
          result.tasks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TaskDetails)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectWithTasks extends ProjectWithTasks {
  @override
  final String? guid;
  @override
  final String? name;
  @override
  final BuiltList<TaskDetails>? tasks;

  factory _$ProjectWithTasks(
          [void Function(ProjectWithTasksBuilder)? updates]) =>
      (new ProjectWithTasksBuilder()..update(updates)).build();

  _$ProjectWithTasks._({this.guid, this.name, this.tasks}) : super._();

  @override
  ProjectWithTasks rebuild(void Function(ProjectWithTasksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectWithTasksBuilder toBuilder() =>
      new ProjectWithTasksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectWithTasks &&
        guid == other.guid &&
        name == other.name &&
        tasks == other.tasks;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, guid.hashCode), name.hashCode), tasks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectWithTasks')
          ..add('guid', guid)
          ..add('name', name)
          ..add('tasks', tasks))
        .toString();
  }
}

class ProjectWithTasksBuilder
    implements Builder<ProjectWithTasks, ProjectWithTasksBuilder> {
  _$ProjectWithTasks? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<TaskDetails>? _tasks;
  ListBuilder<TaskDetails> get tasks =>
      _$this._tasks ??= new ListBuilder<TaskDetails>();
  set tasks(ListBuilder<TaskDetails>? tasks) => _$this._tasks = tasks;

  ProjectWithTasksBuilder();

  ProjectWithTasksBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _name = $v.name;
      _tasks = $v.tasks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectWithTasks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectWithTasks;
  }

  @override
  void update(void Function(ProjectWithTasksBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectWithTasks build() {
    _$ProjectWithTasks _$result;
    try {
      _$result = _$v ??
          new _$ProjectWithTasks._(
              guid: guid, name: name, tasks: _tasks?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tasks';
        _tasks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProjectWithTasks', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
