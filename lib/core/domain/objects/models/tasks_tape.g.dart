// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_tape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TasksTape extends TasksTape {
  @override
  final String? guid;
  @override
  final BuiltList<TaskHistory>? history;

  factory _$TasksTape([void Function(TasksTapeBuilder)? updates]) =>
      (new TasksTapeBuilder()..update(updates)).build();

  _$TasksTape._({this.guid, this.history}) : super._();

  @override
  TasksTape rebuild(void Function(TasksTapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TasksTapeBuilder toBuilder() => new TasksTapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TasksTape && guid == other.guid && history == other.history;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, guid.hashCode), history.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TasksTape')
          ..add('guid', guid)
          ..add('history', history))
        .toString();
  }
}

class TasksTapeBuilder implements Builder<TasksTape, TasksTapeBuilder> {
  _$TasksTape? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  ListBuilder<TaskHistory>? _history;
  ListBuilder<TaskHistory> get history =>
      _$this._history ??= new ListBuilder<TaskHistory>();
  set history(ListBuilder<TaskHistory>? history) => _$this._history = history;

  TasksTapeBuilder();

  TasksTapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _history = $v.history?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TasksTape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TasksTape;
  }

  @override
  void update(void Function(TasksTapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TasksTape build() {
    _$TasksTape _$result;
    try {
      _$result =
          _$v ?? new _$TasksTape._(guid: guid, history: _history?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'history';
        _history?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TasksTape', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
