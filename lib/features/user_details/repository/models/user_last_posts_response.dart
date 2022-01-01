import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:azorin_test/core/core.dart';

import 'models.dart';

part 'user_last_posts_response.g.dart';

abstract class UserLastsPostsResponse
    implements BaseModel, Built<UserLastsPostsResponse, UserLastsPostsResponseBuilder> {
  User? get executor;

  String? get message;

  UserLastsPostsResponse? get request;

  UserLastsPostsResponse._();

  factory UserLastsPostsResponse([void Function(UserLastsPostsResponseBuilder) updates]) = _$UserLastsPostsResponse;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(UserLastsPostsResponse.serializer, this) as Map<String, dynamic>;
  }

  static UserLastsPostsResponse? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(UserLastsPostsResponse.serializer, json);
  }

  static Serializer<UserLastsPostsResponse> get serializer => _$userLastsPostsResponseSerializer;
}
