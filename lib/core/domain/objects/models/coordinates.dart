import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';

part 'coordinates.g.dart';

abstract class Coordinates implements Built<Coordinates, CoordinatesBuilder> {
  double? get longitude;

  double? get latitude;

  String? get timeOfChange;

  Coordinates._();

  factory Coordinates(void Function(CoordinatesBuilder builder) updates) =
      _$Coordinates;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(Coordinates.serializer, this)
        as Map<String, dynamic>;
  }

  static Coordinates? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Coordinates.serializer, json);
  }

  static Serializer<Coordinates> get serializer => _$coordinatesSerializer;
}
