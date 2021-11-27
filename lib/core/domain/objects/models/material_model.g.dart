// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MaterialModel> _$materialModelSerializer =
    new _$MaterialModelSerializer();

class _$MaterialModelSerializer implements StructuredSerializer<MaterialModel> {
  @override
  final Iterable<Type> types = const [MaterialModel, _$MaterialModel];
  @override
  final String wireName = 'MaterialModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MaterialModel object,
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
    value = object.measuringSystem;
    if (value != null) {
      result
        ..add('measuringSystem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.countFact;
    if (value != null) {
      result
        ..add('countFact')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.materialCategory;
    if (value != null) {
      result
        ..add('materialCategory')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoryName;
    if (value != null) {
      result
        ..add('categoryName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MaterialModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MaterialModelBuilder();

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
        case 'measuringSystem':
          result.measuringSystem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'countFact':
          result.countFact = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'materialCategory':
          result.materialCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'categoryName':
          result.categoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MaterialModel extends MaterialModel {
  @override
  final String? guid;
  @override
  final String? name;
  @override
  final String? measuringSystem;
  @override
  final num? count;
  @override
  final num? countFact;
  @override
  final String? materialCategory;
  @override
  final String? categoryName;

  factory _$MaterialModel([void Function(MaterialModelBuilder)? updates]) =>
      (new MaterialModelBuilder()..update(updates)).build();

  _$MaterialModel._(
      {this.guid,
      this.name,
      this.measuringSystem,
      this.count,
      this.countFact,
      this.materialCategory,
      this.categoryName})
      : super._();

  @override
  MaterialModel rebuild(void Function(MaterialModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaterialModelBuilder toBuilder() => new MaterialModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaterialModel &&
        guid == other.guid &&
        name == other.name &&
        measuringSystem == other.measuringSystem &&
        count == other.count &&
        countFact == other.countFact &&
        materialCategory == other.materialCategory &&
        categoryName == other.categoryName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, guid.hashCode), name.hashCode),
                        measuringSystem.hashCode),
                    count.hashCode),
                countFact.hashCode),
            materialCategory.hashCode),
        categoryName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MaterialModel')
          ..add('guid', guid)
          ..add('name', name)
          ..add('measuringSystem', measuringSystem)
          ..add('count', count)
          ..add('countFact', countFact)
          ..add('materialCategory', materialCategory)
          ..add('categoryName', categoryName))
        .toString();
  }
}

class MaterialModelBuilder
    implements Builder<MaterialModel, MaterialModelBuilder> {
  _$MaterialModel? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _measuringSystem;
  String? get measuringSystem => _$this._measuringSystem;
  set measuringSystem(String? measuringSystem) =>
      _$this._measuringSystem = measuringSystem;

  num? _count;
  num? get count => _$this._count;
  set count(num? count) => _$this._count = count;

  num? _countFact;
  num? get countFact => _$this._countFact;
  set countFact(num? countFact) => _$this._countFact = countFact;

  String? _materialCategory;
  String? get materialCategory => _$this._materialCategory;
  set materialCategory(String? materialCategory) =>
      _$this._materialCategory = materialCategory;

  String? _categoryName;
  String? get categoryName => _$this._categoryName;
  set categoryName(String? categoryName) => _$this._categoryName = categoryName;

  MaterialModelBuilder();

  MaterialModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _name = $v.name;
      _measuringSystem = $v.measuringSystem;
      _count = $v.count;
      _countFact = $v.countFact;
      _materialCategory = $v.materialCategory;
      _categoryName = $v.categoryName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MaterialModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaterialModel;
  }

  @override
  void update(void Function(MaterialModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MaterialModel build() {
    final _$result = _$v ??
        new _$MaterialModel._(
            guid: guid,
            name: name,
            measuringSystem: measuringSystem,
            count: count,
            countFact: countFact,
            materialCategory: materialCategory,
            categoryName: categoryName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
