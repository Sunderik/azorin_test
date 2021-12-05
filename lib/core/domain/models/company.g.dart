// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Company> _$companySerializer = new _$CompanySerializer();

class _$CompanySerializer implements StructuredSerializer<Company> {
  @override
  final Iterable<Type> types = const [Company, _$Company];
  @override
  final String wireName = 'Company';

  @override
  Iterable<Object?> serialize(Serializers serializers, Company object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.catchPhrase;
    if (value != null) {
      result
        ..add('catchPhrase')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bs;
    if (value != null) {
      result
        ..add('bs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Company deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'catchPhrase':
          result.catchPhrase = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bs':
          result.bs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Company extends Company {
  @override
  final String? name;
  @override
  final String? catchPhrase;
  @override
  final String? bs;

  factory _$Company([void Function(CompanyBuilder)? updates]) =>
      (new CompanyBuilder()..update(updates)).build();

  _$Company._({this.name, this.catchPhrase, this.bs}) : super._();

  @override
  Company rebuild(void Function(CompanyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyBuilder toBuilder() => new CompanyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Company &&
        name == other.name &&
        catchPhrase == other.catchPhrase &&
        bs == other.bs;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), catchPhrase.hashCode), bs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Company')
          ..add('name', name)
          ..add('catchPhrase', catchPhrase)
          ..add('bs', bs))
        .toString();
  }
}

class CompanyBuilder implements Builder<Company, CompanyBuilder> {
  _$Company? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _catchPhrase;
  String? get catchPhrase => _$this._catchPhrase;
  set catchPhrase(String? catchPhrase) => _$this._catchPhrase = catchPhrase;

  String? _bs;
  String? get bs => _$this._bs;
  set bs(String? bs) => _$this._bs = bs;

  CompanyBuilder();

  CompanyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _catchPhrase = $v.catchPhrase;
      _bs = $v.bs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Company other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Company;
  }

  @override
  void update(void Function(CompanyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Company build() {
    final _$result =
        _$v ?? new _$Company._(name: name, catchPhrase: catchPhrase, bs: bs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
