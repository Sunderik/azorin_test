// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attached_file.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AttachedFile> _$attachedFileSerializer =
    new _$AttachedFileSerializer();

class _$AttachedFileSerializer implements StructuredSerializer<AttachedFile> {
  @override
  final Iterable<Type> types = const [AttachedFile, _$AttachedFile];
  @override
  final String wireName = 'AttachedFile';

  @override
  Iterable<Object?> serialize(Serializers serializers, AttachedFile object,
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
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.size;
    if (value != null) {
      result
        ..add('size')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AttachedFile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttachedFileBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AttachedFile extends AttachedFile {
  @override
  final String? guid;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? size;

  factory _$AttachedFile([void Function(AttachedFileBuilder)? updates]) =>
      (new AttachedFileBuilder()..update(updates)).build();

  _$AttachedFile._({this.guid, this.name, this.type, this.size}) : super._();

  @override
  AttachedFile rebuild(void Function(AttachedFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachedFileBuilder toBuilder() => new AttachedFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachedFile &&
        guid == other.guid &&
        name == other.name &&
        type == other.type &&
        size == other.size;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, guid.hashCode), name.hashCode), type.hashCode),
        size.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AttachedFile')
          ..add('guid', guid)
          ..add('name', name)
          ..add('type', type)
          ..add('size', size))
        .toString();
  }
}

class AttachedFileBuilder
    implements Builder<AttachedFile, AttachedFileBuilder> {
  _$AttachedFile? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _size;
  String? get size => _$this._size;
  set size(String? size) => _$this._size = size;

  AttachedFileBuilder();

  AttachedFileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _name = $v.name;
      _type = $v.type;
      _size = $v.size;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachedFile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachedFile;
  }

  @override
  void update(void Function(AttachedFileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AttachedFile build() {
    final _$result = _$v ??
        new _$AttachedFile._(guid: guid, name: name, type: type, size: size);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
