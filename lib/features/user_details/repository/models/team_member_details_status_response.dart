import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:azorin_test/core/core.dart';

import 'models.dart';

part 'team_member_details_status_response.g.dart';

abstract class TeamMemberDetailsStatusResponse
    implements BaseModel, Built<TeamMemberDetailsStatusResponse, TeamMemberDetailsStatusResponseBuilder> {
  String? get guid;

  bool? get status;

  String? get reasonForAbsence;

  Coordinates? get gps;

  String? get image;

  String? get message;

  String? get workplace;

  TeamMemberDetailsStatusRequest? get request;

  TeamMemberDetailsStatusResponse._();

  factory TeamMemberDetailsStatusResponse([void Function(TeamMemberDetailsStatusResponseBuilder) updates]) =
      _$TeamMemberDetailsStatusResponse;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(TeamMemberDetailsStatusResponse.serializer, this) as Map<String, dynamic>;
  }

  static TeamMemberDetailsStatusResponse? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(TeamMemberDetailsStatusResponse.serializer, json);
  }

  static Serializer<TeamMemberDetailsStatusResponse> get serializer => _$teamMemberDetailsStatusResponseSerializer;
}
