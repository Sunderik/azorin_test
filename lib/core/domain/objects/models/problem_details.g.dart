// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProblemDetails> _$problemDetailsSerializer =
    new _$ProblemDetailsSerializer();

class _$ProblemDetailsSerializer
    implements StructuredSerializer<ProblemDetails> {
  @override
  final Iterable<Type> types = const [ProblemDetails, _$ProblemDetails];
  @override
  final String wireName = 'ProblemDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProblemDetails object,
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
    value = object.type;
    if (value != null) {
      result
        ..add('type')
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Author)));
    }
    value = object.assigned;
    if (value != null) {
      result
        ..add('assigned')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Author)));
    }
    value = object.project;
    if (value != null) {
      result
        ..add('project')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.history;
    if (value != null) {
      result
        ..add('history')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(HistoryItem)])));
    }
    value = object.chatStatus;
    if (value != null) {
      result
        ..add('chatStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProblemDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProblemDetailsBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
              specifiedType: const FullType(Author))! as Author);
          break;
        case 'assigned':
          result.assigned.replace(serializers.deserialize(value,
              specifiedType: const FullType(Author))! as Author);
          break;
        case 'project':
          result.project.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'history':
          result.history.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(HistoryItem)]))!
              as BuiltList<Object>);
          break;
        case 'chatStatus':
          result.chatStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProblemDetails extends ProblemDetails {
  @override
  final String? guid;
  @override
  final String? type;
  @override
  final String? status;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final DateTime? date;
  @override
  final Author? author;
  @override
  final Author? assigned;
  @override
  final SimpleType? project;
  @override
  final BuiltList<HistoryItem>? history;
  @override
  final String? chatStatus;

  factory _$ProblemDetails([void Function(ProblemDetailsBuilder)? updates]) =>
      (new ProblemDetailsBuilder()..update(updates)).build();

  _$ProblemDetails._(
      {this.guid,
      this.type,
      this.status,
      this.name,
      this.description,
      this.date,
      this.author,
      this.assigned,
      this.project,
      this.history,
      this.chatStatus})
      : super._();

  @override
  ProblemDetails rebuild(void Function(ProblemDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProblemDetailsBuilder toBuilder() =>
      new ProblemDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProblemDetails &&
        guid == other.guid &&
        type == other.type &&
        status == other.status &&
        name == other.name &&
        description == other.description &&
        date == other.date &&
        author == other.author &&
        assigned == other.assigned &&
        project == other.project &&
        history == other.history &&
        chatStatus == other.chatStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, guid.hashCode),
                                            type.hashCode),
                                        status.hashCode),
                                    name.hashCode),
                                description.hashCode),
                            date.hashCode),
                        author.hashCode),
                    assigned.hashCode),
                project.hashCode),
            history.hashCode),
        chatStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProblemDetails')
          ..add('guid', guid)
          ..add('type', type)
          ..add('status', status)
          ..add('name', name)
          ..add('description', description)
          ..add('date', date)
          ..add('author', author)
          ..add('assigned', assigned)
          ..add('project', project)
          ..add('history', history)
          ..add('chatStatus', chatStatus))
        .toString();
  }
}

class ProblemDetailsBuilder
    implements Builder<ProblemDetails, ProblemDetailsBuilder> {
  _$ProblemDetails? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  AuthorBuilder? _author;
  AuthorBuilder get author => _$this._author ??= new AuthorBuilder();
  set author(AuthorBuilder? author) => _$this._author = author;

  AuthorBuilder? _assigned;
  AuthorBuilder get assigned => _$this._assigned ??= new AuthorBuilder();
  set assigned(AuthorBuilder? assigned) => _$this._assigned = assigned;

  SimpleTypeBuilder? _project;
  SimpleTypeBuilder get project => _$this._project ??= new SimpleTypeBuilder();
  set project(SimpleTypeBuilder? project) => _$this._project = project;

  ListBuilder<HistoryItem>? _history;
  ListBuilder<HistoryItem> get history =>
      _$this._history ??= new ListBuilder<HistoryItem>();
  set history(ListBuilder<HistoryItem>? history) => _$this._history = history;

  String? _chatStatus;
  String? get chatStatus => _$this._chatStatus;
  set chatStatus(String? chatStatus) => _$this._chatStatus = chatStatus;

  ProblemDetailsBuilder();

  ProblemDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _type = $v.type;
      _status = $v.status;
      _name = $v.name;
      _description = $v.description;
      _date = $v.date;
      _author = $v.author?.toBuilder();
      _assigned = $v.assigned?.toBuilder();
      _project = $v.project?.toBuilder();
      _history = $v.history?.toBuilder();
      _chatStatus = $v.chatStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProblemDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProblemDetails;
  }

  @override
  void update(void Function(ProblemDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProblemDetails build() {
    _$ProblemDetails _$result;
    try {
      _$result = _$v ??
          new _$ProblemDetails._(
              guid: guid,
              type: type,
              status: status,
              name: name,
              description: description,
              date: date,
              author: _author?.build(),
              assigned: _assigned?.build(),
              project: _project?.build(),
              history: _history?.build(),
              chatStatus: chatStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();
        _$failedField = 'assigned';
        _assigned?.build();
        _$failedField = 'project';
        _project?.build();
        _$failedField = 'history';
        _history?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProblemDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
