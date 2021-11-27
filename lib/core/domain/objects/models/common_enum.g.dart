// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommonEnum> _$commonEnumSerializer = new _$CommonEnumSerializer();

class _$CommonEnumSerializer implements StructuredSerializer<CommonEnum> {
  @override
  final Iterable<Type> types = const [CommonEnum, _$CommonEnum];
  @override
  final String wireName = 'CommonEnum';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommonEnum object,
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
    value = object.elements;
    if (value != null) {
      result
        ..add('elements')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommonEnumItem)])));
    }
    return result;
  }

  @override
  CommonEnum deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommonEnumBuilder();

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
        case 'elements':
          result.elements.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommonEnumItem)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CommonEnum extends CommonEnum {
  @override
  final String? guid;
  @override
  final String? name;
  @override
  final BuiltList<CommonEnumItem>? elements;

  factory _$CommonEnum([void Function(CommonEnumBuilder)? updates]) =>
      (new CommonEnumBuilder()..update(updates)).build();

  _$CommonEnum._({this.guid, this.name, this.elements}) : super._();

  @override
  CommonEnum rebuild(void Function(CommonEnumBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommonEnumBuilder toBuilder() => new CommonEnumBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommonEnum &&
        guid == other.guid &&
        name == other.name &&
        elements == other.elements;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, guid.hashCode), name.hashCode), elements.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommonEnum')
          ..add('guid', guid)
          ..add('name', name)
          ..add('elements', elements))
        .toString();
  }
}

class CommonEnumBuilder implements Builder<CommonEnum, CommonEnumBuilder> {
  _$CommonEnum? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<CommonEnumItem>? _elements;
  ListBuilder<CommonEnumItem> get elements =>
      _$this._elements ??= new ListBuilder<CommonEnumItem>();
  set elements(ListBuilder<CommonEnumItem>? elements) =>
      _$this._elements = elements;

  CommonEnumBuilder();

  CommonEnumBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _name = $v.name;
      _elements = $v.elements?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommonEnum other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommonEnum;
  }

  @override
  void update(void Function(CommonEnumBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommonEnum build() {
    _$CommonEnum _$result;
    try {
      _$result = _$v ??
          new _$CommonEnum._(
              guid: guid, name: name, elements: _elements?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'elements';
        _elements?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommonEnum', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
