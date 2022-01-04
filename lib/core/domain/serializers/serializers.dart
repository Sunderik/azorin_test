import 'package:azorin_test/core/core.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

///
@SerializersFor([
  AppState,
  UsersState,
  AlbumsListScreenState,
  PostsListScreenState,
  UserDetailsState,
  UsersListScreenState,
  User,
  Address,
  Geolocation,
  Company,
  Post,
  Album
])
final Serializers mainSerializers = (_$mainSerializers.toBuilder()
      ..add(DateTimeSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();
