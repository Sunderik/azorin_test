// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Author> _$authorSerializer = new _$AuthorSerializer();

class _$AuthorSerializer implements StructuredSerializer<Author> {
  @override
  final Iterable<Type> types = const [Author, _$Author];
  @override
  final String wireName = 'Author';

  @override
  Iterable<Object?> serialize(Serializers serializers, Author object,
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
    value = object.executorId;
    if (value != null) {
      result
        ..add('executorId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('fullName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shortName;
    if (value != null) {
      result
        ..add('shortName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roleId;
    if (value != null) {
      result
        ..add('roleId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Author deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthorBuilder();

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
        case 'executorId':
          result.executorId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shortName':
          result.shortName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'roleId':
          result.roleId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Author extends Author {
  @override
  final String? guid;
  @override
  final String? executorId;
  @override
  final String? fullName;
  @override
  final String? shortName;
  @override
  final String? roleId;

  factory _$Author([void Function(AuthorBuilder)? updates]) =>
      (new AuthorBuilder()..update(updates)).build();

  _$Author._(
      {this.guid, this.executorId, this.fullName, this.shortName, this.roleId})
      : super._();

  @override
  Author rebuild(void Function(AuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorBuilder toBuilder() => new AuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Author &&
        guid == other.guid &&
        executorId == other.executorId &&
        fullName == other.fullName &&
        shortName == other.shortName &&
        roleId == other.roleId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, guid.hashCode), executorId.hashCode),
                fullName.hashCode),
            shortName.hashCode),
        roleId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Author')
          ..add('guid', guid)
          ..add('executorId', executorId)
          ..add('fullName', fullName)
          ..add('shortName', shortName)
          ..add('roleId', roleId))
        .toString();
  }
}

class AuthorBuilder implements Builder<Author, AuthorBuilder> {
  _$Author? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _executorId;
  String? get executorId => _$this._executorId;
  set executorId(String? executorId) => _$this._executorId = executorId;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _shortName;
  String? get shortName => _$this._shortName;
  set shortName(String? shortName) => _$this._shortName = shortName;

  String? _roleId;
  String? get roleId => _$this._roleId;
  set roleId(String? roleId) => _$this._roleId = roleId;

  AuthorBuilder();

  AuthorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _executorId = $v.executorId;
      _fullName = $v.fullName;
      _shortName = $v.shortName;
      _roleId = $v.roleId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Author other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Author;
  }

  @override
  void update(void Function(AuthorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Author build() {
    final _$result = _$v ??
        new _$Author._(
            guid: guid,
            executorId: executorId,
            fullName: fullName,
            shortName: shortName,
            roleId: roleId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
