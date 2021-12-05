import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'models.dart';

part 'team_member_design_engineer_details_request.g.dart';

abstract class TeamMemberDesignEngineerDetailsRequest implements Built<TeamMemberDesignEngineerDetailsRequest, TeamMemberDesignEngineerDetailsRequestBuilder> {
  String? get guid;

  String? get factoryGuid;

  TeamMemberDesignEngineerDetailsRequest._();
  factory TeamMemberDesignEngineerDetailsRequest([void Function(TeamMemberDesignEngineerDetailsRequestBuilder) updates]) = _$TeamMemberDesignEngineerDetailsRequest;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(TeamMemberDesignEngineerDetailsRequest.serializer, this) as Map<String, dynamic>;
  }

  static TeamMemberDesignEngineerDetailsRequest? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(TeamMemberDesignEngineerDetailsRequest.serializer, json);
  }

  static Serializer<TeamMemberDesignEngineerDetailsRequest> get serializer => _$teamMemberDesignEngineerDetailsRequestSerializer;
}