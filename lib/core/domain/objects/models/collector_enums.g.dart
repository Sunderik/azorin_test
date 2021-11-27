// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collector_enums.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CollectorEnums> _$collectorEnumsSerializer =
    new _$CollectorEnumsSerializer();

class _$CollectorEnumsSerializer
    implements StructuredSerializer<CollectorEnums> {
  @override
  final Iterable<Type> types = const [CollectorEnums, _$CollectorEnums];
  @override
  final String wireName = 'CollectorEnums';

  @override
  Iterable<Object?> serialize(Serializers serializers, CollectorEnums object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.directoryHashCode;
    if (value != null) {
      result
        ..add('directoryHashCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.directory;
    if (value != null) {
      result
        ..add('directory')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(CommonEnum)])));
    }
    return result;
  }

  @override
  CollectorEnums deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollectorEnumsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'directoryHashCode':
          result.directoryHashCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'directory':
          result.directory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommonEnum)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CollectorEnums extends CollectorEnums {
  @override
  final String? directoryHashCode;
  @override
  final BuiltList<CommonEnum>? directory;

  factory _$CollectorEnums([void Function(CollectorEnumsBuilder)? updates]) =>
      (new CollectorEnumsBuilder()..update(updates)).build();

  _$CollectorEnums._({this.directoryHashCode, this.directory}) : super._();

  @override
  CollectorEnums rebuild(void Function(CollectorEnumsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectorEnumsBuilder toBuilder() =>
      new CollectorEnumsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectorEnums &&
        directoryHashCode == other.directoryHashCode &&
        directory == other.directory;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, directoryHashCode.hashCode), directory.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CollectorEnums')
          ..add('directoryHashCode', directoryHashCode)
          ..add('directory', directory))
        .toString();
  }
}

class CollectorEnumsBuilder
    implements Builder<CollectorEnums, CollectorEnumsBuilder> {
  _$CollectorEnums? _$v;

  String? _directoryHashCode;
  String? get directoryHashCode => _$this._directoryHashCode;
  set directoryHashCode(String? directoryHashCode) =>
      _$this._directoryHashCode = directoryHashCode;

  ListBuilder<CommonEnum>? _directory;
  ListBuilder<CommonEnum> get directory =>
      _$this._directory ??= new ListBuilder<CommonEnum>();
  set directory(ListBuilder<CommonEnum>? directory) =>
      _$this._directory = directory;

  CollectorEnumsBuilder();

  CollectorEnumsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _directoryHashCode = $v.directoryHashCode;
      _directory = $v.directory?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectorEnums other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CollectorEnums;
  }

  @override
  void update(void Function(CollectorEnumsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CollectorEnums build() {
    _$CollectorEnums _$result;
    try {
      _$result = _$v ??
          new _$CollectorEnums._(
              directoryHashCode: directoryHashCode,
              directory: _directory?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'directory';
        _directory?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CollectorEnums', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
