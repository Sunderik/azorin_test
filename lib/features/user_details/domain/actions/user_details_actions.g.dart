// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_actions.dart';

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$TeamMemberDetailsActions extends TeamMemberDetailsActions {
  factory _$TeamMemberDetailsActions() => _$TeamMemberDetailsActions._();
  _$TeamMemberDetailsActions._() : super._();

  final teamExecutorInfoRequest = ActionDispatcher<TeamExecutorInfoRequest>(
      'TeamMemberDetailsActions-teamExecutorInfoRequest');
  final setTeamExecutorInfoResponse =
      ActionDispatcher<TeamExecutorInfoResponse>(
          'TeamMemberDetailsActions-setTeamExecutorInfoResponse');
  final teamMemberDetailsRequest = ActionDispatcher<TeamMemberInfoRequest>(
      'TeamMemberDetailsActions-teamMemberDetailsRequest');
  final setTeamMemberDetailsResponse =
      ActionDispatcher<TeamExecutorInfoResponse>(
          'TeamMemberDetailsActions-setTeamMemberDetailsResponse');
  final teamMemberDesignEngineerDetailsRequest =
      ActionDispatcher<TeamMemberDesignEngineerDetailsRequest>(
          'TeamMemberDetailsActions-teamMemberDesignEngineerDetailsRequest');
  final setTeamMemberDesignEngineerDetailsResponse = ActionDispatcher<
          TeamMemberDesignEngineerDetailsResponse>(
      'TeamMemberDetailsActions-setTeamMemberDesignEngineerDetailsResponse');
  final teamMemberDetailsStatusRequest =
      ActionDispatcher<TeamMemberDetailsStatusRequest>(
          'TeamMemberDetailsActions-teamMemberDetailsStatusRequest');
  final setTeamMemberDetailsStatusResponse =
      ActionDispatcher<TeamMemberDetailsStatusResponse>(
          'TeamMemberDetailsActions-setTeamMemberDetailsStatusResponse');
  final setTeamExecutorInfo = ActionDispatcher<Executor>(
      'TeamMemberDetailsActions-setTeamExecutorInfo');
  final setTeamMemberDetailsScreenStatus = ActionDispatcher<ScreenStatusEnum>(
      'TeamMemberDetailsActions-setTeamMemberDetailsScreenStatus');
  final clearTeamMemberDetailsExecutor = ActionDispatcher<void>(
      'TeamMemberDetailsActions-clearTeamMemberDetailsExecutor');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    teamExecutorInfoRequest.setDispatcher(dispatcher);
    setTeamExecutorInfoResponse.setDispatcher(dispatcher);
    teamMemberDetailsRequest.setDispatcher(dispatcher);
    setTeamMemberDetailsResponse.setDispatcher(dispatcher);
    teamMemberDesignEngineerDetailsRequest.setDispatcher(dispatcher);
    setTeamMemberDesignEngineerDetailsResponse.setDispatcher(dispatcher);
    teamMemberDetailsStatusRequest.setDispatcher(dispatcher);
    setTeamMemberDetailsStatusResponse.setDispatcher(dispatcher);
    setTeamExecutorInfo.setDispatcher(dispatcher);
    setTeamMemberDetailsScreenStatus.setDispatcher(dispatcher);
    clearTeamMemberDetailsExecutor.setDispatcher(dispatcher);
  }
}

class TeamMemberDetailsActionsNames {
  static final teamExecutorInfoRequest = ActionName<TeamExecutorInfoRequest>(
      'TeamMemberDetailsActions-teamExecutorInfoRequest');
  static final setTeamExecutorInfoResponse =
      ActionName<TeamExecutorInfoResponse>(
          'TeamMemberDetailsActions-setTeamExecutorInfoResponse');
  static final teamMemberDetailsRequest = ActionName<TeamMemberInfoRequest>(
      'TeamMemberDetailsActions-teamMemberDetailsRequest');
  static final setTeamMemberDetailsResponse =
      ActionName<TeamExecutorInfoResponse>(
          'TeamMemberDetailsActions-setTeamMemberDetailsResponse');
  static final teamMemberDesignEngineerDetailsRequest =
      ActionName<TeamMemberDesignEngineerDetailsRequest>(
          'TeamMemberDetailsActions-teamMemberDesignEngineerDetailsRequest');
  static final setTeamMemberDesignEngineerDetailsResponse = ActionName<
          TeamMemberDesignEngineerDetailsResponse>(
      'TeamMemberDetailsActions-setTeamMemberDesignEngineerDetailsResponse');
  static final teamMemberDetailsStatusRequest =
      ActionName<TeamMemberDetailsStatusRequest>(
          'TeamMemberDetailsActions-teamMemberDetailsStatusRequest');
  static final setTeamMemberDetailsStatusResponse =
      ActionName<TeamMemberDetailsStatusResponse>(
          'TeamMemberDetailsActions-setTeamMemberDetailsStatusResponse');
  static final setTeamExecutorInfo =
      ActionName<Executor>('TeamMemberDetailsActions-setTeamExecutorInfo');
  static final setTeamMemberDetailsScreenStatus = ActionName<ScreenStatusEnum>(
      'TeamMemberDetailsActions-setTeamMemberDetailsScreenStatus');
  static final clearTeamMemberDetailsExecutor = ActionName<void>(
      'TeamMemberDetailsActions-clearTeamMemberDetailsExecutor');
}
