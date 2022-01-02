import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:azorin_test/core/domain/serializers/serializers.dart';

part 'geolocation.g.dart';

///
abstract class Geolocation implements Built<Geolocation, GeolocationBuilder> {
  ///
  String? get lat;

  ///
  String? get lng;

  Geolocation._();
  ///
  factory Geolocation([void Function(GeolocationBuilder) updates]) = _$Geolocation;
  ///
  Map<String, dynamic>? toJson() {
    return mainSerializers.serializeWith(Geolocation.serializer, this) as Map<String, dynamic>;
  }
  ///
  static Geolocation? fromJson(Map<String, dynamic> json) {
    return mainSerializers.deserializeWith(Geolocation.serializer, json);
  }
  ///
  static Serializer<Geolocation> get serializer => _$geolocationSerializer;
}
