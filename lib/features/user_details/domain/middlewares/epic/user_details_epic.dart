import 'dart:async';

import 'package:built_redux/built_redux.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/features/logger/logger.dart';
import 'package:azorin_test/features/user_details/domain/domain.dart';
import 'package:azorin_test/features/user_details/repository/models/models.dart';
import 'package:azorin_test/features/user_details/repository/user_details_repository.dart';

@Injectable()
class TeamMemberDetailsEpic {
  TeamMemberDetailsEpic(this._repository);

  final TeamMemberDetailsRepository _repository;

  /// Epic получения информации об исполнителе.
  Stream teamExecutorInfoEpic(
      Stream<Action<dynamic>> stream, MiddlewareApi<AppState, AppStateBuilder, AppActions> api) {
    return stream
        .where((action) => action.name == TeamMemberDetailsActionsNames.teamExecutorInfoRequest.name)
        .cast<Action<TeamExecutorInfoRequest>>()
        .switchMap((action) {
      final request = action.payload;
      return _repository.makeTeamExecutorInfoRequest(
        request: request,
        timeout: const Duration(seconds: 20),
      );
    }).doOnData((teamExecutorInfoResponse) {
      logger.i('Received Response Body: \n$teamExecutorInfoResponse');
      api.actions.teamMemberDetailsActions.setTeamExecutorInfoResponse(teamExecutorInfoResponse);
    }).handleError((exception) {
      logger.e(exception);
    });
  }

  /// Epic изменения статуса пользователя.
  Stream teamExecutorInfoStatusEpic(
      Stream<Action<dynamic>> stream, MiddlewareApi<AppState, AppStateBuilder, AppActions> api) {
    return stream
        .where((action) => action.name == TeamMemberDetailsActionsNames.teamMemberDetailsStatusRequest.name)
        .cast<Action<TeamMemberDetailsStatusRequest>>()
        .switchMap((action) {
      return _repository.makeTeamMemberDetailsStatusRequest(
        requestStatus: action.payload,
        timeout: const Duration(seconds: 20),
      );
    }).doOnData((teamExecutorInfoStatusResponse) {
      logger.i('Received Response Body: \n$teamExecutorInfoStatusResponse');
      api.actions.teamMemberDetailsActions.setTeamMemberDetailsStatusResponse(teamExecutorInfoStatusResponse);
    }).handleError((exception) {
      logger.e(exception);
    });
  }

  /// Epic получение информации о сотруднике.
  Stream teamMemberInfoEpic(Stream<Action<dynamic>> stream, MiddlewareApi<AppState, AppStateBuilder, AppActions> api) {
    return stream
        .where((action) => action.name == TeamMemberDetailsActionsNames.teamMemberDetailsRequest.name)
        .cast<Action<TeamMemberInfoRequest>>()
        .switchMap((action) {
      final TeamMemberInfoRequest request = action.payload;
      return _repository.makeTeamMemberInfoRequest(
        request: request,
        timeout: const Duration(seconds: 20),
      );
    }).doOnData((teamExecutorInfoResponse) {
      logger.i('Received Response Body: \n$teamExecutorInfoResponse');
      api.actions.teamMemberDetailsActions.setTeamMemberDetailsResponse(teamExecutorInfoResponse);
    }).handleError((exception) {
      logger.e(exception);
    });
  }

  /// Epic получение информации о сотруднике отдела проектирования и наладки.
  Stream teamMemberDesignEngineerDetailsEpic(
      Stream<Action<dynamic>> stream, MiddlewareApi<AppState, AppStateBuilder, AppActions> api) {
    return stream
        .where((action) => action.name == TeamMemberDetailsActionsNames.teamMemberDesignEngineerDetailsRequest.name)
        .cast<Action<TeamMemberDesignEngineerDetailsRequest>>()
        .switchMap((action) {
      final TeamMemberDesignEngineerDetailsRequest request = action.payload;
      return _repository.makeTeamMemberDesignEngineerRequest(
        request: request,
        timeout: const Duration(seconds: 20),
      );
    }).doOnData((teamMemberDesignEngineerResponse) {
      logger.i('Received Response Body: \n$teamMemberDesignEngineerResponse');
      api.actions.teamMemberDetailsActions.setTeamMemberDesignEngineerDetailsResponse(teamMemberDesignEngineerResponse);
    }).handleError((exception) {
      logger.e(exception);
    });
  }
}
