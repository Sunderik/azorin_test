import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:azorin_test/core/core.dart';

import 'models.dart';

part 'user_last_albums_response.g.dart';

abstract class UserLastsAlbumsResponse
    implements BaseModel, Built<UserLastsAlbumsResponse, UserLastsAlbumsResponseBuilder> {

  UserLastsAlbumsRequest? get request;

  UserLastsAlbumsResponse._();

  factory UserLastsAlbumsResponse([void Function(UserLastsAlbumsResponseBuilder) updates]) = _$UserLastsAlbumsResponse;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(UserLastsAlbumsResponse.serializer, this) as Map<String, dynamic>;
  }

  static UserLastsAlbumsResponse? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(UserLastsAlbumsResponse.serializer, json);
  }

  static Serializer<UserLastsAlbumsResponse> get serializer => _$userLastsAlbumsResponseSerializer;
}
