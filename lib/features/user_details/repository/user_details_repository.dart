import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/core/network/models/rest_bundle.dart';
import 'package:azorin_test/core/network/service/rest_service.dart';
import 'package:azorin_test/core/utilities/isolate_manager/isolate_manager_mixin.dart';
import 'package:azorin_test/features/logger/logger.dart';
import 'package:azorin_test/features/user_details/repository/models/models.dart';
import 'package:azorin_test/features/user_details/repository/endpoints/endpoints.dart';

import 'models/models.dart';

abstract class UserDetailsRepository {
  /// Запрос на получение исполнителя проекта
  Stream<UserLastsPostsResponse> makeUserLastPostsRequest({required int userId, Duration timeout});

  /// Запрос на изменение статуса пользователя
  Stream<UserLastsAlbumsResponse> makeUserLastAlbumsRequest({required int userId, Duration timeout});
}

@Injectable(as: UserDetailsRepository)
class UserDetailsRepositoryImpl with IsolateManagerMixin implements UserDetailsRepository {
  late final RestService _restService;
  late final UrlFactory _urlFactory;

  UserDetailsRepositoryImpl(this._restService, this._urlFactory);

  /// Запрос на получение информации об исполнителе
  @override
  Stream<UserLastsPostsResponse> makeUserLastPostsRequest(
      {required int userId, Duration timeout = const Duration(seconds: 20)}) {
    final inputSubject = BehaviorSubject<RestBundle>();
    final outputSubject = BehaviorSubject<UserLastsPostsResponse>();
    subscribe(inputSubject, outputSubject, userLastsPostsMapRestBundle);
    _makeUserLastPostsRequest(
      input: inputSubject,
      output: outputSubject,
      userId: userId,
      timeout: timeout,
    );

    return outputSubject.map((output) => output);
  }

  void _makeUserLastPostsRequest(
      {required BehaviorSubject<RestBundle> input,
      required BehaviorSubject<UserLastsPostsResponse> output,
      required int userId,
      required Duration timeout}) {
    final endpoint = UserPostsEndpoint(userId);
    final url = _urlFactory.createFor<UserPostsEndpoint>(endpoint);
    executeGetRestRequest(
      input,
      output,
      _restService,
      url,
      UserLastsPostsResponse.serializer,
      timeout,
    );
  }

  /// Запрос на изменение статуса исполнителя
  @override
  Stream<UserLastsAlbumsResponse> makeUserLastAlbumsRequest(
      {required int userId, Duration timeout = const Duration(seconds: 20)}) {
    final inputSubject = BehaviorSubject<RestBundle>();
    final outputSubject = BehaviorSubject<UserLastsAlbumsResponse>();
    subscribe(inputSubject, outputSubject, userLastsAlbumsMapRestBundle);
    _makeUserLastAlbumsRequest(
      input: inputSubject,
      output: outputSubject,
      userId: userId,
      timeout: timeout,
    );

    return outputSubject.map((output) => output);
  }

  void _makeUserLastAlbumsRequest(
      {required BehaviorSubject<RestBundle> input,
      required BehaviorSubject<UserLastsAlbumsResponse> output,
      required int userId,
      required Duration timeout}) {
    final endpoint = UserAlbumsEndpoint(userId);
    final url = _urlFactory.createFor<UserAlbumsEndpoint>(endpoint);

    executeGetRestRequest(input, output, _restService, url, UserLastsAlbumsResponse.serializer, timeout);
  }
}

UserLastsPostsResponse userLastsPostsMapRestBundle(RestBundle bundle) {
  if (bundle.status != 200) {
    return UserLastsPostsResponse((builder) => builder
      ..httpCode = bundle.status
      ..message = bundle.data.toString());
  }
  try {
    final jsonDecoded = jsonDecode(bundle.data ?? '');
    UserLastsPostsResponse response = serializers.deserializeWith(bundle.serializer!, jsonDecoded);
    return response.rebuild((builder) => builder.httpCode = bundle.status);
  } catch (err) {
    logger.e('userLastsPostsMapRestBundle $err');
    return UserLastsPostsResponse((builder) => builder.httpCode = bundle.status);
  }
}

UserLastsAlbumsResponse userLastsAlbumsMapRestBundle(RestBundle bundle) {
  if (bundle.status != 200) {
    return UserLastsAlbumsResponse((builder) => builder
      ..httpCode = bundle.status
      ..message = bundle.data.toString());
  }
  try {
    UserLastsAlbumsResponse response = serializers.deserializeWith(bundle.serializer!, jsonDecode(bundle.data ?? ''));
    return response.rebuild((builder) => builder.httpCode = bundle.status);
  } catch (err) {
    logger.e('userLastsAlbumsMapRestBundle $err');
    return UserLastsAlbumsResponse((builder) => builder.httpCode = bundle.status);
  }
}
