// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SimpleType> _$simpleTypeSerializer = new _$SimpleTypeSerializer();

class _$SimpleTypeSerializer implements StructuredSerializer<SimpleType> {
  @override
  final Iterable<Type> types = const [SimpleType, _$SimpleType];
  @override
  final String wireName = 'SimpleType';

  @override
  Iterable<Object?> serialize(Serializers serializers, SimpleType object,
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
    return result;
  }

  @override
  SimpleType deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SimpleTypeBuilder();

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
      }
    }

    return result.build();
  }
}

class _$SimpleType extends SimpleType {
  @override
  final String? guid;
  @override
  final String? name;

  factory _$SimpleType([void Function(SimpleTypeBuilder)? updates]) =>
      (new SimpleTypeBuilder()..update(updates)).build();

  _$SimpleType._({this.guid, this.name}) : super._();

  @override
  SimpleType rebuild(void Function(SimpleTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleTypeBuilder toBuilder() => new SimpleTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleType && guid == other.guid && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, guid.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SimpleType')
          ..add('guid', guid)
          ..add('name', name))
        .toString();
  }
}

class SimpleTypeBuilder implements Builder<SimpleType, SimpleTypeBuilder> {
  _$SimpleType? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  SimpleTypeBuilder();

  SimpleTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SimpleType;
  }

  @override
  void update(void Function(SimpleTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SimpleType build() {
    final _$result = _$v ?? new _$SimpleType._(guid: guid, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
