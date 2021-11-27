// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskHistory extends TaskHistory {
  @override
  final String? guid;
  @override
  final String? date;
  @override
  final String autoComment;
  @override
  final String? comment;
  @override
  final BuiltList<String>? images;
  @override
  final BuiltList<AttachedFile>? files;
  @override
  final String? taskId;
  @override
  final String? taskName;
  @override
  final String? status;

  factory _$TaskHistory([void Function(TaskHistoryBuilder)? updates]) =>
      (new TaskHistoryBuilder()..update(updates)).build();

  _$TaskHistory._(
      {this.guid,
      this.date,
      required this.autoComment,
      this.comment,
      this.images,
      this.files,
      this.taskId,
      this.taskName,
      this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        autoComment, 'TaskHistory', 'autoComment');
  }

  @override
  TaskHistory rebuild(void Function(TaskHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskHistoryBuilder toBuilder() => new TaskHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskHistory &&
        guid == other.guid &&
        date == other.date &&
        autoComment == other.autoComment &&
        comment == other.comment &&
        images == other.images &&
        files == other.files &&
        taskId == other.taskId &&
        taskName == other.taskName &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, guid.hashCode), date.hashCode),
                                autoComment.hashCode),
                            comment.hashCode),
                        images.hashCode),
                    files.hashCode),
                taskId.hashCode),
            taskName.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TaskHistory')
          ..add('guid', guid)
          ..add('date', date)
          ..add('autoComment', autoComment)
          ..add('comment', comment)
          ..add('images', images)
          ..add('files', files)
          ..add('taskId', taskId)
          ..add('taskName', taskName)
          ..add('status', status))
        .toString();
  }
}

class TaskHistoryBuilder implements Builder<TaskHistory, TaskHistoryBuilder> {
  _$TaskHistory? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _autoComment;
  String? get autoComment => _$this._autoComment;
  set autoComment(String? autoComment) => _$this._autoComment = autoComment;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  ListBuilder<String>? _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String>? images) => _$this._images = images;

  ListBuilder<AttachedFile>? _files;
  ListBuilder<AttachedFile> get files =>
      _$this._files ??= new ListBuilder<AttachedFile>();
  set files(ListBuilder<AttachedFile>? files) => _$this._files = files;

  String? _taskId;
  String? get taskId => _$this._taskId;
  set taskId(String? taskId) => _$this._taskId = taskId;

  String? _taskName;
  String? get taskName => _$this._taskName;
  set taskName(String? taskName) => _$this._taskName = taskName;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  TaskHistoryBuilder();

  TaskHistoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _date = $v.date;
      _autoComment = $v.autoComment;
      _comment = $v.comment;
      _images = $v.images?.toBuilder();
      _files = $v.files?.toBuilder();
      _taskId = $v.taskId;
      _taskName = $v.taskName;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskHistory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TaskHistory;
  }

  @override
  void update(void Function(TaskHistoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TaskHistory build() {
    _$TaskHistory _$result;
    try {
      _$result = _$v ??
          new _$TaskHistory._(
              guid: guid,
              date: date,
              autoComment: BuiltValueNullFieldError.checkNotNull(
                  autoComment, 'TaskHistory', 'autoComment'),
              comment: comment,
              images: _images?.build(),
              files: _files?.build(),
              taskId: taskId,
              taskName: taskName,
              status: status);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
        _$failedField = 'files';
        _files?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TaskHistory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
