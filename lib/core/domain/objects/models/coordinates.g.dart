// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinates.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Coordinates> _$coordinatesSerializer = new _$CoordinatesSerializer();

class _$CoordinatesSerializer implements StructuredSerializer<Coordinates> {
  @override
  final Iterable<Type> types = const [Coordinates, _$Coordinates];
  @override
  final String wireName = 'Coordinates';

  @override
  Iterable<Object?> serialize(Serializers serializers, Coordinates object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.longitude;
    if (value != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.latitude;
    if (value != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.timeOfChange;
    if (value != null) {
      result
        ..add('timeOfChange')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Coordinates deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoordinatesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'timeOfChange':
          result.timeOfChange = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Coordinates extends Coordinates {
  @override
  final double? longitude;
  @override
  final double? latitude;
  @override
  final String? timeOfChange;

  factory _$Coordinates([void Function(CoordinatesBuilder)? updates]) =>
      (new CoordinatesBuilder()..update(updates)).build();

  _$Coordinates._({this.longitude, this.latitude, this.timeOfChange})
      : super._();

  @override
  Coordinates rebuild(void Function(CoordinatesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoordinatesBuilder toBuilder() => new CoordinatesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Coordinates &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        timeOfChange == other.timeOfChange;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, longitude.hashCode), latitude.hashCode),
        timeOfChange.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Coordinates')
          ..add('longitude', longitude)
          ..add('latitude', latitude)
          ..add('timeOfChange', timeOfChange))
        .toString();
  }
}

class CoordinatesBuilder implements Builder<Coordinates, CoordinatesBuilder> {
  _$Coordinates? _$v;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  String? _timeOfChange;
  String? get timeOfChange => _$this._timeOfChange;
  set timeOfChange(String? timeOfChange) => _$this._timeOfChange = timeOfChange;

  CoordinatesBuilder();

  CoordinatesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _longitude = $v.longitude;
      _latitude = $v.latitude;
      _timeOfChange = $v.timeOfChange;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Coordinates other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Coordinates;
  }

  @override
  void update(void Function(CoordinatesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Coordinates build() {
    final _$result = _$v ??
        new _$Coordinates._(
            longitude: longitude,
            latitude: latitude,
            timeOfChange: timeOfChange);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
