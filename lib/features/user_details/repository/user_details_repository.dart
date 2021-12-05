import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/core/network/models/rest_bundle.dart';
import 'package:azorin_test/core/network/service/rest_service.dart';
import 'package:azorin_test/core/utilities/isolate_manager/isolate_manager_mixin.dart';
import 'package:azorin_test/features/logger/logger.dart';
import 'package:azorin_test/features/user_details/repository/endpoints/endpoints.dart';
import 'package:azorin_test/features/user_details/repository/endpoints/team_member_design_engineer_details_endpoint.dart';
import 'package:azorin_test/features/user_details/repository/models/models.dart';

import 'models/models.dart';

abstract class TeamMemberDetailsRepository {
  /// Запрос на получение исполнителя проекта
  Stream<TeamExecutorInfoResponse> makeTeamExecutorInfoRequest(
      {required TeamExecutorInfoRequest request, Duration timeout});

  /// Запрос на изменение статуса пользователя
  Stream<TeamMemberDetailsStatusResponse> makeTeamMemberDetailsStatusRequest(
      {required TeamMemberDetailsStatusRequest requestStatus, Duration timeout});

  /// Запрос на получение информации о сотруднике
  Stream<TeamExecutorInfoResponse> makeTeamMemberInfoRequest(
      {required TeamMemberInfoRequest request, Duration timeout});

  /// Запрос на получение информации о пользователе
  Stream<TeamMemberDesignEngineerDetailsResponse> makeTeamMemberDesignEngineerRequest(
      {required TeamMemberDesignEngineerDetailsRequest request, Duration timeout});
}

@Injectable(as: TeamMemberDetailsRepository)
class TeamMemberDetailsRepositoryImpl with IsolateManagerMixin implements TeamMemberDetailsRepository {
  late final IRestService _restService;
  late final UrlFactory _urlFactory;

  late TeamExecutorInfoRequest request;
  late TeamMemberDetailsStatusRequest requestStatus;
  late TeamMemberInfoRequest requestMember;

  TeamMemberDetailsRepositoryImpl(this._restService, this._urlFactory);

  /// Запрос на получение информации об исполнителе
  @override
  Stream<TeamExecutorInfoResponse> makeTeamExecutorInfoRequest(
      {required TeamExecutorInfoRequest request, Duration timeout = const Duration(seconds: 20)}) {
    this.request = request;
    final inputSubject = BehaviorSubject<RestBundle>();
    final outputSubject = BehaviorSubject<TeamExecutorInfoResponse>();
    subscribe(inputSubject, outputSubject, teamExecutorInfoMapRestBundle);
    _makeTeamExecutorInfoRequest(
      input: inputSubject,
      output: outputSubject,
      request: request,
      timeout: timeout,
    );

    return outputSubject.map((output) => output.rebuild((b) => b.request.replace(request)));
  }

  void _makeTeamExecutorInfoRequest(
      {required BehaviorSubject<RestBundle> input,
      required BehaviorSubject<TeamExecutorInfoResponse> output,
      required TeamExecutorInfoRequest request,
      required Duration timeout}) {
    final endpoint = TeamExecutorInfoEndpoint();
    final url = _urlFactory.createFor<TeamExecutorInfoEndpoint>(endpoint);
    final requestString = request.toJson();
    final requestDescription = "Прикрепление информации о сотруднике";
    executeRestPostStringRequest(
      input,
      output,
      _restService,
      url,
      requestString,
      TeamExecutorInfoResponse.serializer,
      timeout,
      requestDescription,
      false,
    );
  }

  /// Запрос на изменение статуса исполнителя
  @override
  Stream<TeamMemberDetailsStatusResponse> makeTeamMemberDetailsStatusRequest(
      {required TeamMemberDetailsStatusRequest requestStatus, Duration timeout = const Duration(seconds: 20)}) {
    this.requestStatus = requestStatus;
    final inputSubject = BehaviorSubject<RestBundle>();
    final outputSubject = BehaviorSubject<TeamMemberDetailsStatusResponse>();
    subscribe(inputSubject, outputSubject, teamMemberDetailsStatusMapRestBundle);
    _makeTeamMemberDetailsStatusRequest(
      input: inputSubject,
      output: outputSubject,
      requestStatus: requestStatus,
      timeout: timeout,
    );

    return outputSubject.map((output) => output.rebuild((b) => b.request.replace(requestStatus)));
  }

  void _makeTeamMemberDetailsStatusRequest(
      {required BehaviorSubject<RestBundle> input,
      required BehaviorSubject<TeamMemberDetailsStatusResponse> output,
      required TeamMemberDetailsStatusRequest requestStatus,
      required Duration timeout}) {
    final endpoint = TeamExecutorInfoStatusEndpoint();
    final url = _urlFactory.createFor<TeamExecutorInfoStatusEndpoint>(endpoint);
    final requestString = json.encode(requestStatus.toJson());
    final requestDescription = "Изменение статуса сотрудника";
    executeRestPostStringRequest(input, output, _restService, url, requestString,
        TeamMemberDetailsStatusResponse.serializer, timeout, requestDescription, true);
  }

  /// Запрос на получение информации об участнике
  @override
  Stream<TeamExecutorInfoResponse> makeTeamMemberInfoRequest(
      {required TeamMemberInfoRequest request, Duration timeout = const Duration(seconds: 20)}) {
    this.requestMember = request;
    final inputSubject = BehaviorSubject<RestBundle>();
    final outputSubject = BehaviorSubject<TeamExecutorInfoResponse>();
    subscribe(inputSubject, outputSubject, teamMemberInfoMapRestBundle);
    _makeTeamMemberInfoRequest(
      employeeId: requestMember.guid!,
      input: inputSubject,
      output: outputSubject,
      timeout: timeout,
    );

    return outputSubject;
  }

  void _makeTeamMemberInfoRequest(
      {required String employeeId,
      required BehaviorSubject<RestBundle> input,
      required BehaviorSubject<TeamExecutorInfoResponse> output,
      required Duration timeout}) {
    final endpoint = TeamMemberInfoEndpoint(employeeId);
    final url = _urlFactory.createFor<TeamMemberInfoEndpoint>(endpoint);
    final requestDescription = 'Получение информации об исполнителе';
    executeRestGetStringRequest(
        input, output, _restService, url, TeamExecutorInfoResponse.serializer, timeout, requestDescription, false);
  }

  @override
  Stream<TeamMemberDesignEngineerDetailsResponse> makeTeamMemberDesignEngineerRequest(
      {required TeamMemberDesignEngineerDetailsRequest request, Duration timeout = const Duration(seconds: 20)}) {
    final inputSubject = BehaviorSubject<RestBundle>();
    final outputSubject = BehaviorSubject<TeamMemberDesignEngineerDetailsResponse>();
    subscribe(inputSubject, outputSubject, teamMemberDesignEngineerDetailsMapRestBundle);
    _makeTeamMemberDesignEngineerDetailsRequest(
      employeeGuid: request.guid,
      factoryGuid: request.factoryGuid,
      input: inputSubject,
      output: outputSubject,
      request: request,
      timeout: timeout,
    );

    return outputSubject.map((output) => output.rebuild((b) => b.request.replace(request)));
  }

  void _makeTeamMemberDesignEngineerDetailsRequest(
      {String? employeeGuid,
      String? factoryGuid,
      required BehaviorSubject<RestBundle> input,
      required BehaviorSubject<TeamMemberDesignEngineerDetailsResponse> output,
      required TeamMemberDesignEngineerDetailsRequest request,
      required Duration timeout}) {
    final endpoint = TeamMemberDesignEngineerDetailsEndpoint(employeeGuid, factoryGuid);
    final url = _urlFactory.createFor<TeamMemberDesignEngineerDetailsEndpoint>(endpoint);
    final requestDescription = 'Получение информации о сотруднике отдела проектирования';
    executeRestGetStringRequest(input, output, _restService, url, TeamMemberDesignEngineerDetailsResponse.serializer,
        timeout, requestDescription, false);
  }
}

TeamExecutorInfoResponse teamExecutorInfoMapRestBundle(RestBundle bundle) {
  if (bundle.status != 200) {
    return TeamExecutorInfoResponse((builder) => builder
      ..httpCode = bundle.status
      ..message = bundle.data.toString());
  }
  try {
    final jsonDecoded = {'executor': jsonDecode(bundle.data ?? '')};
    TeamExecutorInfoResponse response = serializers.deserializeWith(bundle.serializer!, jsonDecoded);
    return response.rebuild((builder) => builder.httpCode = bundle.status);
  } catch (err) {
    logger.e('teamExecutorInfoMapRestBundle $err');
    return TeamExecutorInfoResponse((builder) => builder.httpCode = bundle.status);
  }
}

TeamMemberDetailsStatusResponse teamMemberDetailsStatusMapRestBundle(RestBundle bundle) {
  if (bundle.status != 200) {
    return TeamMemberDetailsStatusResponse((builder) => builder
      ..httpCode = bundle.status
      ..message = bundle.data.toString());
  }
  try {
    TeamMemberDetailsStatusResponse response =
        serializers.deserializeWith(bundle.serializer!, jsonDecode(bundle.data ?? ''));
    return response.rebuild((builder) => builder.httpCode = bundle.status);
  } catch (err) {
    logger.e('teamMemberDetailsStatusMapRestBundle $err');
    return TeamMemberDetailsStatusResponse((builder) => builder.httpCode = bundle.status);
  }
}

TeamExecutorInfoResponse teamMemberInfoMapRestBundle(RestBundle bundle) {
  if (bundle.status != 200) {
    return TeamExecutorInfoResponse((builder) => builder
      ..httpCode = bundle.status
      ..message = bundle.data.toString());
  }
  try {
    final jsonDecoded = {
      'executor': {
        'guid': null,
        'employee': jsonDecode(bundle.data ?? ''),
        'reasonForAbsence': null,
      }
    };
    TeamExecutorInfoResponse response = serializers.deserializeWith(bundle.serializer!, jsonDecoded);
    return response.rebuild((builder) => builder.httpCode = bundle.status);
  } catch (err) {
    logger.e('teamMemberInfoMapRestBundle $err');
    return TeamExecutorInfoResponse((builder) => builder.httpCode = bundle.status);
  }
}

TeamMemberDesignEngineerDetailsResponse teamMemberDesignEngineerDetailsMapRestBundle(RestBundle bundle) {
  if (bundle.status != 200) {
    return TeamMemberDesignEngineerDetailsResponse((builder) => builder
      ..httpCode = bundle.status
      ..message = bundle.data.toString());
  }
  try {
    TeamMemberDesignEngineerDetailsResponse response =
        serializers.deserializeWith(bundle.serializer!, jsonDecode(bundle.data ?? ''));
    return response.rebuild((builder) => builder.httpCode = bundle.status);
  } catch (err) {
    logger.e('teamMemberDesignEngineerDetailsMapRestBundle $err');
    return TeamMemberDesignEngineerDetailsResponse((builder) => builder.httpCode = bundle.status);
  }
}
