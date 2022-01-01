import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'models.dart';

part 'user_last_posts_request.g.dart';

abstract class UserLastsPostsRequest implements Built<UserLastsPostsRequest, UserLastsPostsRequestBuilder> {
  UserLastsPostsRequest._();

  factory UserLastsPostsRequest([void Function(UserLastsPostsRequestBuilder) updates]) = _$UserLastsPostsRequest;

  String toJson() {
    return json.encode(serializers.serializeWith(UserLastsPostsRequest.serializer, this));
  }

  static UserLastsPostsRequest fromJson(String jsonString) {
    return serializers.deserializeWith(UserLastsPostsRequest.serializer, json.decode(jsonString))!;
  }

  static Serializer<UserLastsPostsRequest> get serializer => _$userLastsPostsRequestSerializer;
}
