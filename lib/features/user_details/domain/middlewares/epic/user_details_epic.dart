import 'dart:async';

import 'package:built_redux/built_redux.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/features/logger/logger.dart';
import 'package:azorin_test/features/user_details/domain/domain.dart';
import 'package:azorin_test/features/user_details/repository/models/_models.dart';
import 'package:azorin_test/features/user_details/repository/user_details_repository.dart';

///
@Injectable()
class UserDetailsEpic {
  UserDetailsEpic(this._repository);

  ///
  final UserDetailsRepository _repository;

  ///
  Stream userPostsEpic(Stream<Action<dynamic>> stream, MiddlewareApi<AppState, AppStateBuilder, AppActions> api) {
    return stream
        .where((action) => action.name == UserDetailsActionsNames.userPostsRequest.name)
        .cast<Action<UserPostsRequest>>()
        .switchMap((action) {
      final request = action.payload;
      return _repository.makeUserPostsRequest(
        userId: request.userId,
        timeout: const Duration(seconds: 20),
      );
    }).doOnData((userPostsResponse) {
      logger.i('Received Response Body: \n$userPostsResponse');
      api.actions.userScreen.setUserPostsResponse(userPostsResponse);
    }).handleError((exception) {
      logger.e(exception);
    });
  }

// /// Epic
// Stream teamExecutorInfoStatusEpic(
//     Stream<Action<dynamic>> stream, MiddlewareApi<AppState, AppStateBuilder, AppActions> api) {
//   return stream
//       .where((action) => action.name == UserDetailsActionsNames.userDetailsStatusRequest.name)
//       .cast<Action<UserDetailsStatusRequest>>()
//       .switchMap((action) {
//     return _repository.makeUserDetailsStatusRequest(
//       requestStatus: action.payload,
//       timeout: const Duration(seconds: 20),
//     );
//   }).doOnData((teamExecutorInfoStatusResponse) {
//     logger.i('Received Response Body: \n$teamExecutorInfoStatusResponse');
//     api.actions.userDetailsActions.setUserDetailsStatusResponse(teamExecutorInfoStatusResponse);
//   }).handleError((exception) {
//     logger.e(exception);
//   });
// }
}
