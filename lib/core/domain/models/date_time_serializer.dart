import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

///
class DateTimeSerializer implements PrimitiveSerializer<DateTime> {
  ///
  final bool structured = false;

  ///
  @override
  final Iterable<Type> types = new BuiltList<Type>([DateTime]);

  ///
  @override
  final String wireName = 'GeoPoint';

  ///
  @override
  Object serialize(Serializers serializers, DateTime geoPoint, {FullType specifiedType: FullType.unspecified}) {
    return geoPoint.toIso8601String();
  }

  ///
  @override
  DateTime deserialize(Serializers serializers, Object serialized, {FullType specifiedType: FullType.unspecified}) {
    return DateTime.parse(serialized as String);
  }
}
