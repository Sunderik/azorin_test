import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'models.dart';

part 'team_executor_info_request.g.dart';

abstract class TeamExecutorInfoRequest
    implements Built<TeamExecutorInfoRequest, TeamExecutorInfoRequestBuilder> {
  String? get projectGuid;

  String? get executorGuid;

  TeamExecutorInfoRequest._();
  factory TeamExecutorInfoRequest(
          [void Function(TeamExecutorInfoRequestBuilder) updates]) =
      _$TeamExecutorInfoRequest;

  String toJson() {
    return json.encode(
        serializers.serializeWith(TeamExecutorInfoRequest.serializer, this));
  }

  static TeamExecutorInfoRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        TeamExecutorInfoRequest.serializer, json.decode(jsonString))!;
  }

  static Serializer<TeamExecutorInfoRequest> get serializer =>
      _$teamExecutorInfoRequestSerializer;
}
