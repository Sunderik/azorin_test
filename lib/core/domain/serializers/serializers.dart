import 'package:azorin_test/core/core.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor([AppState, NavigationState, UsersState, User, Address, Geolocation, Company])
final Serializers mainSerializers = (_$mainSerializers.toBuilder()
      ..add(DateTimeSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();
