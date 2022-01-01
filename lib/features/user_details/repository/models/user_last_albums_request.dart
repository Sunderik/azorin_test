import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'models.dart';

part 'user_last_albums_request.g.dart';

abstract class UserLastsAlbumsRequest implements Built<UserLastsAlbumsRequest, UserLastsAlbumsRequestBuilder> {
  String? get guid;

  String? get factoryGuid;

  UserLastsAlbumsRequest._();
  factory UserLastsAlbumsRequest([void Function(UserLastsAlbumsRequestBuilder) updates]) = _$UserLastsAlbumsRequest;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(UserLastsAlbumsRequest.serializer, this) as Map<String, dynamic>;
  }

  static UserLastsAlbumsRequest? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(UserLastsAlbumsRequest.serializer, json);
  }

  static Serializer<UserLastsAlbumsRequest> get serializer => _$userLastsAlbumsRequestSerializer;
}