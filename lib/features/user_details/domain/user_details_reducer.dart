import 'package:built_redux/built_redux.dart';
import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/core/domain/objects/enums/local_enums/screen_status_enum.dart';
import 'package:azorin_test/features/user_details/domain/domain.dart';

NestedReducerBuilder<AppState, AppStateBuilder, TeamMemberDetailsState, TeamMemberDetailsStateBuilder>
    createTeamMemberDetailsReducer() {
  return NestedReducerBuilder<AppState, AppStateBuilder, TeamMemberDetailsState, TeamMemberDetailsStateBuilder>(
    (state) => state.teamMemberDetailsState,
    (builder) => builder.teamMemberDetailsState,
  )
    ..add(TeamMemberDetailsActionsNames.setTeamExecutorInfo, _setTeamExecutorInfo)
    ..add(TeamMemberDetailsActionsNames.setTeamMemberDetailsScreenStatus, _setTeamMemberDetailsScreenStatus)
    ..add(TeamMemberDetailsActionsNames.clearTeamMemberDetailsExecutor, _clearTeamMemberDetailsExecutor);
}

void _setTeamExecutorInfo(
  TeamMemberDetailsState state,
  Action<Executor> action,
  TeamMemberDetailsStateBuilder builder,
) {
  builder.executor.replace(action.payload);
}

void _setTeamMemberDetailsScreenStatus(
    TeamMemberDetailsState state, Action<ScreenStatusEnum> action, TeamMemberDetailsStateBuilder builder) {
  builder.teamMemberDetailsScreenStatus = action.payload;
}

void _clearTeamMemberDetailsExecutor(
    TeamMemberDetailsState state, Action<void> action, TeamMemberDetailsStateBuilder builder) {
  builder.executor = null;
}
