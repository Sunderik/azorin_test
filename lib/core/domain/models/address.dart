import 'package:azorin_test/core/domain/serializers/serializers.dart';
import 'package:azorin_test/core/domain/models/geolocation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'address.g.dart';

///
abstract class Address implements Built<Address, AddressBuilder> {
  ///
  String? get street;

  ///
  String? get suite;

  ///
  String? get city;

  ///
  String? get zipcode;

  ///
  @BuiltValueField(wireName: 'geo')
  Geolocation? get geolocation;

  Address._();

  factory Address([void Function(AddressBuilder) updates]) = _$Address;

  Map<String, dynamic>? toJson() {
    return mainSerializers.serializeWith(Address.serializer, this) as Map<String, dynamic>;
  }

  static Address? fromJson(Map<String, dynamic> json) {
    return mainSerializers.deserializeWith(Address.serializer, json);
  }

  static Serializer<Address> get serializer => _$addressSerializer;
}
