import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:azorin_test/core/core.dart';

import 'models.dart';

part 'team_member_details_status_request.g.dart';

abstract class TeamMemberDetailsStatusRequest
    implements Built<TeamMemberDetailsStatusRequest, TeamMemberDetailsStatusRequestBuilder> {
  String? get guid;

  bool? get status;

  String? get projectGuid;

  String? get reasonForAbsence;

  /// Дополнительный комментарий к причине отсутствия.
  String? get reasonForAbsenceComment;

  /// Начальная дата указанного периода.
  DateTime? get startDate;

  /// Конечная дата указанного периода.
  DateTime? get endDate;

  Coordinates? get coordinates;

  String? get image;

  String? get workplace;

  TeamMemberDetailsStatusRequest._();
  factory TeamMemberDetailsStatusRequest([void Function(TeamMemberDetailsStatusRequestBuilder) updates]) =
      _$TeamMemberDetailsStatusRequest;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(TeamMemberDetailsStatusRequest.serializer, this) as Map<String, dynamic>;
  }

  static TeamMemberDetailsStatusRequest? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(TeamMemberDetailsStatusRequest.serializer, json);
  }

  static Serializer<TeamMemberDetailsStatusRequest> get serializer => _$teamMemberDetailsStatusRequestSerializer;
}
