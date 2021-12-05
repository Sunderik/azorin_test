// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geolocation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Geolocation> _$geolocationSerializer = new _$GeolocationSerializer();

class _$GeolocationSerializer implements StructuredSerializer<Geolocation> {
  @override
  final Iterable<Type> types = const [Geolocation, _$Geolocation];
  @override
  final String wireName = 'Geolocation';

  @override
  Iterable<Object?> serialize(Serializers serializers, Geolocation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.lat;
    if (value != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lng;
    if (value != null) {
      result
        ..add('lng')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Geolocation deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeolocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lng':
          result.lng = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Geolocation extends Geolocation {
  @override
  final String? lat;
  @override
  final String? lng;

  factory _$Geolocation([void Function(GeolocationBuilder)? updates]) =>
      (new GeolocationBuilder()..update(updates)).build();

  _$Geolocation._({this.lat, this.lng}) : super._();

  @override
  Geolocation rebuild(void Function(GeolocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeolocationBuilder toBuilder() => new GeolocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Geolocation && lat == other.lat && lng == other.lng;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lat.hashCode), lng.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Geolocation')
          ..add('lat', lat)
          ..add('lng', lng))
        .toString();
  }
}

class GeolocationBuilder implements Builder<Geolocation, GeolocationBuilder> {
  _$Geolocation? _$v;

  String? _lat;
  String? get lat => _$this._lat;
  set lat(String? lat) => _$this._lat = lat;

  String? _lng;
  String? get lng => _$this._lng;
  set lng(String? lng) => _$this._lng = lng;

  GeolocationBuilder();

  GeolocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lat = $v.lat;
      _lng = $v.lng;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Geolocation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Geolocation;
  }

  @override
  void update(void Function(GeolocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Geolocation build() {
    final _$result = _$v ?? new _$Geolocation._(lat: lat, lng: lng);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
