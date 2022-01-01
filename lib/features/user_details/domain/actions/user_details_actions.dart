import 'package:built_redux/built_redux.dart';
import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/features/user_details/repository/models/models.dart';

part 'user_details_actions.g.dart';

abstract class UserDetailsActions extends ReduxActions {
  UserDetailsActions._();

  factory UserDetailsActions() => _$UserDetailsActions();

  /// Action запроса на получение последних трех постов пользователя
  late ActionDispatcher<UserLastsPostsRequest> userLastsPostsRequest;

  /// Action ответа на запрос получение последних трех постов пользователя
  late ActionDispatcher<UserLastsPostsResponse> setUserLastsPostsResponse;

  /// Action запроса на получение последних трех альбомов пользователя
  late ActionDispatcher<UserLastsAlbumsRequest> userLastsAlbumsRequest;

  /// Action ответа на запрос получение последних трех альбомов пользователя
  late ActionDispatcher<UserLastsAlbumsResponse> setUserLastsAlbumsResponse;

  /// Action определения статуса экрана в [UserDetailsState.screenStatus].
  late ActionDispatcher<ScreenStatusEnum> setUserDetailsScreenStatus;

  late ActionDispatcher<void> clearUserDetails;
}
