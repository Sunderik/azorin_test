// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HistoryItem> _$historyItemSerializer = new _$HistoryItemSerializer();

class _$HistoryItemSerializer implements StructuredSerializer<HistoryItem> {
  @override
  final Iterable<Type> types = const [HistoryItem, _$HistoryItem];
  @override
  final String wireName = 'HistoryItem';

  @override
  Iterable<Object?> serialize(Serializers serializers, HistoryItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Author)));
    }
    value = object.action;
    if (value != null) {
      result
        ..add('action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.files;
    if (value != null) {
      result
        ..add('files')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AttachedFile)])));
    }
    value = object.object;
    if (value != null) {
      result
        ..add('object')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
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
    value = object.material;
    if (value != null) {
      result
        ..add('material')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.reason;
    if (value != null) {
      result
        ..add('reason')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  HistoryItem deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistoryItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author':
          result.author.replace(serializers.deserialize(value,
              specifiedType: const FullType(Author))! as Author);
          break;
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
        case 'files':
          result.files.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AttachedFile)]))!
              as BuiltList<Object>);
          break;
        case 'object':
          result.object.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'material':
          result.material.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'reason':
          result.reason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HistoryItem extends HistoryItem {
  @override
  final String? date;
  @override
  final Author? author;
  @override
  final String? action;
  @override
  final String? comment;
  @override
  final BuiltList<String>? images;
  @override
  final BuiltList<AttachedFile>? files;
  @override
  final SimpleType? object;
  @override
  final String? status;
  @override
  final String? type;
  @override
  final SimpleType? material;
  @override
  final String? reason;

  factory _$HistoryItem([void Function(HistoryItemBuilder)? updates]) =>
      (new HistoryItemBuilder()..update(updates)).build();

  _$HistoryItem._(
      {this.date,
      this.author,
      this.action,
      this.comment,
      this.images,
      this.files,
      this.object,
      this.status,
      this.type,
      this.material,
      this.reason})
      : super._();

  @override
  HistoryItem rebuild(void Function(HistoryItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryItemBuilder toBuilder() => new HistoryItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryItem &&
        date == other.date &&
        author == other.author &&
        action == other.action &&
        comment == other.comment &&
        images == other.images &&
        files == other.files &&
        object == other.object &&
        status == other.status &&
        type == other.type &&
        material == other.material &&
        reason == other.reason;
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
                                        $jc($jc(0, date.hashCode),
                                            author.hashCode),
                                        action.hashCode),
                                    comment.hashCode),
                                images.hashCode),
                            files.hashCode),
                        object.hashCode),
                    status.hashCode),
                type.hashCode),
            material.hashCode),
        reason.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HistoryItem')
          ..add('date', date)
          ..add('author', author)
          ..add('action', action)
          ..add('comment', comment)
          ..add('images', images)
          ..add('files', files)
          ..add('object', object)
          ..add('status', status)
          ..add('type', type)
          ..add('material', material)
          ..add('reason', reason))
        .toString();
  }
}

class HistoryItemBuilder implements Builder<HistoryItem, HistoryItemBuilder> {
  _$HistoryItem? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  AuthorBuilder? _author;
  AuthorBuilder get author => _$this._author ??= new AuthorBuilder();
  set author(AuthorBuilder? author) => _$this._author = author;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

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

  SimpleTypeBuilder? _object;
  SimpleTypeBuilder get object => _$this._object ??= new SimpleTypeBuilder();
  set object(SimpleTypeBuilder? object) => _$this._object = object;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  SimpleTypeBuilder? _material;
  SimpleTypeBuilder get material =>
      _$this._material ??= new SimpleTypeBuilder();
  set material(SimpleTypeBuilder? material) => _$this._material = material;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  HistoryItemBuilder();

  HistoryItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _author = $v.author?.toBuilder();
      _action = $v.action;
      _comment = $v.comment;
      _images = $v.images?.toBuilder();
      _files = $v.files?.toBuilder();
      _object = $v.object?.toBuilder();
      _status = $v.status;
      _type = $v.type;
      _material = $v.material?.toBuilder();
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistoryItem;
  }

  @override
  void update(void Function(HistoryItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HistoryItem build() {
    _$HistoryItem _$result;
    try {
      _$result = _$v ??
          new _$HistoryItem._(
              date: date,
              author: _author?.build(),
              action: action,
              comment: comment,
              images: _images?.build(),
              files: _files?.build(),
              object: _object?.build(),
              status: status,
              type: type,
              material: _material?.build(),
              reason: reason);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        _author?.build();

        _$failedField = 'images';
        _images?.build();
        _$failedField = 'files';
        _files?.build();
        _$failedField = 'object';
        _object?.build();

        _$failedField = 'material';
        _material?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HistoryItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
