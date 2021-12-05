import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'models.dart';

part 'team_member_info_request.g.dart';

abstract class TeamMemberInfoRequest
    implements Built<TeamMemberInfoRequest, TeamMemberInfoRequestBuilder> {
  String? get guid;

  TeamMemberInfoRequest._();
  factory TeamMemberInfoRequest(
          [void Function(TeamMemberInfoRequestBuilder) updates]) =
      _$TeamMemberInfoRequest;

  String toJson() {
    return json.encode(
        serializers.serializeWith(TeamMemberInfoRequest.serializer, this));
  }

  static TeamMemberInfoRequest fromJson(String jsonString) {
    return serializers.deserializeWith(
        TeamMemberInfoRequest.serializer, json.decode(jsonString))!;
  }

  static Serializer<TeamMemberInfoRequest> get serializer =>
      _$teamMemberInfoRequestSerializer;
}
