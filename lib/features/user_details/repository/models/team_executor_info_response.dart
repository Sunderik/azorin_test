import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:azorin_test/core/core.dart';

import 'models.dart';

part 'team_executor_info_response.g.dart';

abstract class TeamExecutorInfoResponse
    implements
        BaseModel,
        Built<TeamExecutorInfoResponse, TeamExecutorInfoResponseBuilder> {
  Executor? get executor;

  String? get message;

  TeamExecutorInfoRequest? get request;

  TeamExecutorInfoResponse._();
  factory TeamExecutorInfoResponse(
          [void Function(TeamExecutorInfoResponseBuilder) updates]) =
      _$TeamExecutorInfoResponse;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(TeamExecutorInfoResponse.serializer, this) as Map<String, dynamic>;
  }

  static TeamExecutorInfoResponse? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(
        TeamExecutorInfoResponse.serializer, json);
  }

  static Serializer<TeamExecutorInfoResponse> get serializer =>
      _$teamExecutorInfoResponseSerializer;
}
