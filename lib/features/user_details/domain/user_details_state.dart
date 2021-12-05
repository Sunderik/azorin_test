import 'package:built_value/built_value.dart';
import 'package:azorin_test/core/core.dart';

part 'user_details_state.g.dart';

abstract class TeamMemberDetailsState implements Built<TeamMemberDetailsState, TeamMemberDetailsStateBuilder> {
  /// Объект переноса данных исполнителя проекта.
  Executor? get executor;

  /// Статус экрана.
  ScreenStatusEnum? get teamMemberDetailsScreenStatus;

  TeamMemberDetailsState._();

  factory TeamMemberDetailsState([void Function(TeamMemberDetailsStateBuilder) updates]) = _$TeamMemberDetailsState;
}
