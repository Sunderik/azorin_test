// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cad_category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CadCategory> _$cadCategorySerializer = new _$CadCategorySerializer();

class _$CadCategorySerializer implements StructuredSerializer<CadCategory> {
  @override
  final Iterable<Type> types = const [CadCategory, _$CadCategory];
  @override
  final String wireName = 'CadCategory';

  @override
  Iterable<Object?> serialize(Serializers serializers, CadCategory object,
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
    value = object.isQuantitative;
    if (value != null) {
      result
        ..add('isQuantitative')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.cadMaterials;
    if (value != null) {
      result
        ..add('cadMaterials')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SimpleType)])));
    }
    return result;
  }

  @override
  CadCategory deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CadCategoryBuilder();

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
        case 'isQuantitative':
          result.isQuantitative = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cadMaterials':
          result.cadMaterials.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SimpleType)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CadCategory extends CadCategory {
  @override
  final String? guid;
  @override
  final String? name;
  @override
  final bool? isQuantitative;
  @override
  final BuiltList<SimpleType>? cadMaterials;

  factory _$CadCategory([void Function(CadCategoryBuilder)? updates]) =>
      (new CadCategoryBuilder()..update(updates)).build();

  _$CadCategory._(
      {this.guid, this.name, this.isQuantitative, this.cadMaterials})
      : super._();

  @override
  CadCategory rebuild(void Function(CadCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CadCategoryBuilder toBuilder() => new CadCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CadCategory &&
        guid == other.guid &&
        name == other.name &&
        isQuantitative == other.isQuantitative &&
        cadMaterials == other.cadMaterials;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, guid.hashCode), name.hashCode), isQuantitative.hashCode),
        cadMaterials.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CadCategory')
          ..add('guid', guid)
          ..add('name', name)
          ..add('isQuantitative', isQuantitative)
          ..add('cadMaterials', cadMaterials))
        .toString();
  }
}

class CadCategoryBuilder implements Builder<CadCategory, CadCategoryBuilder> {
  _$CadCategory? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isQuantitative;
  bool? get isQuantitative => _$this._isQuantitative;
  set isQuantitative(bool? isQuantitative) =>
      _$this._isQuantitative = isQuantitative;

  ListBuilder<SimpleType>? _cadMaterials;
  ListBuilder<SimpleType> get cadMaterials =>
      _$this._cadMaterials ??= new ListBuilder<SimpleType>();
  set cadMaterials(ListBuilder<SimpleType>? cadMaterials) =>
      _$this._cadMaterials = cadMaterials;

  CadCategoryBuilder();

  CadCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _name = $v.name;
      _isQuantitative = $v.isQuantitative;
      _cadMaterials = $v.cadMaterials?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CadCategory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CadCategory;
  }

  @override
  void update(void Function(CadCategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CadCategory build() {
    _$CadCategory _$result;
    try {
      _$result = _$v ??
          new _$CadCategory._(
              guid: guid,
              name: name,
              isQuantitative: isQuantitative,
              cadMaterials: _cadMaterials?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cadMaterials';
        _cadMaterials?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CadCategory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
