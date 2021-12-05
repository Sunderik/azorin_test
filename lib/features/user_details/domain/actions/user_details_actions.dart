import 'package:built_redux/built_redux.dart';
import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/core/domain/objects/enums/local_enums/screen_status_enum.dart';
import 'package:azorin_test/features/user_details/repository/models/models.dart';

part 'user_details_actions.g.dart';

abstract class TeamMemberDetailsActions extends ReduxActions {
  TeamMemberDetailsActions._();

  factory TeamMemberDetailsActions() => _$TeamMemberDetailsActions();

  /// Action запроса на получение информации об исполнителе.
  late ActionDispatcher<TeamExecutorInfoRequest> teamExecutorInfoRequest;

  /// Action ответа на запрос получения информации об исполнителе.
  late ActionDispatcher<TeamExecutorInfoResponse> setTeamExecutorInfoResponse;

  /// Action запроса на получение информации о сотруднике.
  late ActionDispatcher<TeamMemberInfoRequest> teamMemberDetailsRequest;

  /// Action ответа на запрос получения информации о сотруднике.
  late ActionDispatcher<TeamExecutorInfoResponse> setTeamMemberDetailsResponse;

  /// Action запроса на получение информации о пользователе отдела проектирования и наладки.
  late ActionDispatcher<TeamMemberDesignEngineerDetailsRequest> teamMemberDesignEngineerDetailsRequest;

  /// Action ответа на запрос получения информации о пользователе отдела проектирования и наладки.
  late ActionDispatcher<TeamMemberDesignEngineerDetailsResponse> setTeamMemberDesignEngineerDetailsResponse;

  /// Action запроса на изменение статуса пользователя.
  late ActionDispatcher<TeamMemberDetailsStatusRequest> teamMemberDetailsStatusRequest;

  /// Action ответа на запрос изменения статуса пользователя.
  late ActionDispatcher<TeamMemberDetailsStatusResponse> setTeamMemberDetailsStatusResponse;

  /// Action определения исполнителя в [TeamMemberDetailsState.executor].
  late ActionDispatcher<Executor> setTeamExecutorInfo;

  /// Action определения статуса экрана в [TeamMemberDetailsState.teamMemberDetailsScreenStatus].
  late ActionDispatcher<ScreenStatusEnum> setTeamMemberDetailsScreenStatus;

  /// Очистить поле [TeamMemberDetailsState.executor].
  late ActionDispatcher<void> clearTeamMemberDetailsExecutor;
}
