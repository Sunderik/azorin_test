// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HistoryModel> _$historyModelSerializer =
    new _$HistoryModelSerializer();

class _$HistoryModelSerializer implements StructuredSerializer<HistoryModel> {
  @override
  final Iterable<Type> types = const [HistoryModel, _$HistoryModel];
  @override
  final String wireName = 'HistoryModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, HistoryModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'autoComment',
      serializers.serialize(object.autoComment,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.guid;
    if (value != null) {
      result
        ..add('guid')
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
    return result;
  }

  @override
  HistoryModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistoryModelBuilder();

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
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'autoComment':
          result.autoComment = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$HistoryModel extends HistoryModel {
  @override
  final String? guid;
  @override
  final String? comment;
  @override
  final String autoComment;
  @override
  final BuiltList<String>? images;
  @override
  final BuiltList<AttachedFile>? files;

  factory _$HistoryModel([void Function(HistoryModelBuilder)? updates]) =>
      (new HistoryModelBuilder()..update(updates)).build();

  _$HistoryModel._(
      {this.guid,
      this.comment,
      required this.autoComment,
      this.images,
      this.files})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        autoComment, 'HistoryModel', 'autoComment');
  }

  @override
  HistoryModel rebuild(void Function(HistoryModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryModelBuilder toBuilder() => new HistoryModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryModel &&
        guid == other.guid &&
        comment == other.comment &&
        autoComment == other.autoComment &&
        images == other.images &&
        files == other.files;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, guid.hashCode), comment.hashCode),
                autoComment.hashCode),
            images.hashCode),
        files.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HistoryModel')
          ..add('guid', guid)
          ..add('comment', comment)
          ..add('autoComment', autoComment)
          ..add('images', images)
          ..add('files', files))
        .toString();
  }
}

class HistoryModelBuilder
    implements Builder<HistoryModel, HistoryModelBuilder> {
  _$HistoryModel? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _autoComment;
  String? get autoComment => _$this._autoComment;
  set autoComment(String? autoComment) => _$this._autoComment = autoComment;

  ListBuilder<String>? _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String>? images) => _$this._images = images;

  ListBuilder<AttachedFile>? _files;
  ListBuilder<AttachedFile> get files =>
      _$this._files ??= new ListBuilder<AttachedFile>();
  set files(ListBuilder<AttachedFile>? files) => _$this._files = files;

  HistoryModelBuilder();

  HistoryModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _comment = $v.comment;
      _autoComment = $v.autoComment;
      _images = $v.images?.toBuilder();
      _files = $v.files?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistoryModel;
  }

  @override
  void update(void Function(HistoryModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HistoryModel build() {
    _$HistoryModel _$result;
    try {
      _$result = _$v ??
          new _$HistoryModel._(
              guid: guid,
              comment: comment,
              autoComment: BuiltValueNullFieldError.checkNotNull(
                  autoComment, 'HistoryModel', 'autoComment'),
              images: _images?.build(),
              files: _files?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
        _$failedField = 'files';
        _files?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HistoryModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
