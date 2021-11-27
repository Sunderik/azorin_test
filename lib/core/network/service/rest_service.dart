import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/core/network/interceptor/auth_interceptor.dart';
import 'package:tecon_task/core/network/interceptor/interceptor.dart';
import 'package:tecon_task/core/network/models/network_serializers.dart';
import 'package:tecon_task/core/network/models/not_sent_request_model.dart';
import 'package:tecon_task/core/services/display_error_service.dart';
import 'package:tecon_task/features/logger/logger.dart';
import 'package:tecon_task/injection.dart';

const _methodPost = 'POST';
const _methodGet = 'GET';

/// Интерфейс сервиса запросов
abstract class IRestService {
  Future<RESP> get<RESP>(Uri path,
      {Map<String, dynamic>? queryParameters,
      Serializer? deserializer,
      Map<String, String>? headers,
      required String description,
      required bool isSaveQuery});

  Future<RESP> getStringRequest<RESP>(Uri path,
      {Map<String, dynamic>? queryParameters,
      Serializer? deserializer,
      Map<String, String>? headers,
      required String description,
      required bool isSaveQuery});

  Future<RESP> post<RESP>(Uri path, Built request,
      {Serializer? deserializer, Map<String, String>? headers, required String description, required bool isSaveQuery});

  Future<RESP> postStringRequest<RESP>(Uri url, String stringRequest,
      {Serializer? deserializer, Map<String, String>? headers, required String description, required bool isSaveQuery});

  Future<RESP> postMultipartRequest<RESP>(Uri url, Map<String, String> requestFields, String filepath,
      {Serializer? deserializer, Map<String, String>? headers, required String description, required bool isSaveQuery});

  Future<RESP> multipartRequest<RESP>(Uri url, Map<String, String> requestFields, List<MultipartFile> multipartFiles,
      {Serializer? deserializer, Map<String, String>? headers, required String description, required bool isSaveQuery});

  Map<int, Interceptor> get interceptors;

  void setLoggingEnabled(bool isEnabled, {bool stripBody});

  void addInterceptor(int order, Interceptor interceptor);

  void removeInterceptor(Interceptor interceptor);
}

/// Реализация сервиса запросов под мобильную платформу
@Injectable(as: IRestService)
class RestService implements IRestService {
  RestService(
    this.client,
  );

  final Client client;

  bool _isLoggingEnabled = true;

  @override
  Map<int, Interceptor> interceptors = {
    1: AuthInterceptor(),
  };

  @override
  void setLoggingEnabled(bool isEnabled, {bool? stripBody}) {
    _isLoggingEnabled = isEnabled;
  }

  @override
  void addInterceptor(int order, Interceptor interceptor) {
    interceptors.putIfAbsent(order, () => interceptor);
  }

  @override
  void removeInterceptor(Interceptor interceptor) {
    interceptors.removeWhere((key, value) => value == interceptor);
  }

  @override
  Future<RESP> getStringRequest<RESP>(Uri path,
      {Map<String, dynamic>? queryParameters,
      Serializer? deserializer,
      Map<String, String>? headers,
      required String description,
      required bool isSaveQuery}) async {
    final request = Request(_methodGet, path);

    _interceptRequest(request);

    headers?.forEach((key, update) {
      request.headers.update(key, (value) => update, ifAbsent: () => update);
    });

    if (_isLoggingEnabled) {
      _printRequestLog(_methodGet, request);
    }
    final response = await Response.fromStream(
      await client.send(request).catchError(
        (error, stackTrace) {
          logger.e('Error in getStringRequest', error, stackTrace);
          throw error;
        },
      ),
    );

    if (_isLoggingEnabled) {
      _printResponseLog(_methodGet, response);
    }

    if (deserializer != null) {
      return serializers.deserializeWith(
        deserializer,
        jsonDecode(response.body),
      ) as RESP;
    } else {
      return response as RESP;
    }
  }

  @override
  Future<RESP> postStringRequest<RESP>(Uri url, String stringRequest,
      {Serializer? deserializer,
      Map<String, String>? headers,
      required String description,
      required bool isSaveQuery}) async {
    final request = Request(_methodPost, url)..body = stringRequest;

    _interceptRequest(request);

    headers?.forEach((key, update) {
      request.headers.update(key, (value) => update, ifAbsent: () => update);
    });

    if (_isLoggingEnabled) {
      _printRequestLog(_methodPost, request);
    }

    final response = await Response.fromStream(
      await client.send(request).catchError(
        (error, stackTrace) {
          injector.get<DisplayErrorService>().displayNetworkError(
              exception: error,
              isSaveQuery: isSaveQuery,
              request: createRequestModel(description, url.toString(), stringRequest, null, null, headers));

          logger.e('Error in postStringRequest', error, stackTrace);
          throw error;
        },
      ),
    );

    if (_isLoggingEnabled) {
      _printResponseLog(_methodPost, response);
    }

    if (deserializer != null) {
      return serializers.deserializeWith(deserializer, jsonDecode(response.body)) as RESP;
    } else {
      return response as RESP;
    }
  }

  @override
  Future<RESP> postMultipartRequest<RESP>(Uri url, Map<String, String> requestFields, String filepath,
      {Serializer? deserializer,
      Map<String, String>? headers,
      required String description,
      required bool isSaveQuery}) async {
    final request = MultipartRequest(_methodPost, url);

    request.fields.addAll(requestFields);
    request.files.add(await MultipartFile.fromPath('file', filepath));

    _interceptRequest(request);

    headers?.forEach((key, update) {
      request.headers.update(key, (value) => update, ifAbsent: () => update);
    });

    if (_isLoggingEnabled) {
      _printMultipartRequestLog(_methodPost, request);
    }

    final response = await Response.fromStream(
      await client.send(request).catchError(
        (error, stackTrace) {
          //Если произошла ошибка не свзанная с сервером
          injector.get<DisplayErrorService>().displayNetworkError(
              exception: error,
              isSaveQuery: isSaveQuery,
              request: createRequestModel(description, url.toString(), null, filepath, requestFields, headers));

          logger.e('Error in postMultipartRequest', error, stackTrace);
          throw error;
        },
      ),
    );

    if (_isLoggingEnabled) {
      _printResponseLog(_methodPost, response);
    }

    if (deserializer != null) {
      return serializers.deserializeWith(deserializer, jsonDecode(response.body)) as RESP;
    } else {
      return response as RESP;
    }
  }

  @override
  Future<RESP> multipartRequest<RESP>(Uri url, Map<String, String> requestFields, List<MultipartFile> multipartFiles,
      {Serializer? deserializer,
      Map<String, String>? headers,
      required String description,
      required bool isSaveQuery}) async {
    final request = MultipartRequest(_methodPost, url);
    request.fields.addAll(requestFields);

    request.files.addAll(multipartFiles);

    _interceptRequest(request);

    headers?.forEach((key, update) {
      request.headers.update(key, (value) => update, ifAbsent: () => update);
    });

    if (_isLoggingEnabled) {
      _printMultipartRequestLog(_methodPost, request);
    }

    final response = await Response.fromStream(
      await client.send(request).catchError(
        (error, stackTrace) {
          //Если произошла ошибка не свзанная с сервером
          injector.get<DisplayErrorService>().displayNetworkError(
              exception: error,
              isSaveQuery: isSaveQuery,
              request:
                  createRequestModel(description, url.toString(), request.toString(), null, requestFields, headers));
          logger.e('Error in multipartRequest', error, stackTrace);
          throw error;
        },
      ),
    );

    if (_isLoggingEnabled) {
      _printResponseLog(_methodPost, response);
    }

    if (deserializer != null) {
      return serializers.deserializeWith(deserializer, jsonDecode(response.body)) as RESP;
    } else {
      return response as RESP;
    }
  }

  @override
  Future<RESPONSE> post<RESPONSE>(Uri url, Built requestBody,
      {Serializer? deserializer,
      Map<String, String>? headers,
      required String description,
      required bool isSaveQuery}) {
    final json = JsonCodec().encode(serializers.serialize(requestBody));
    return postStringRequest(url, json.toString(),
        deserializer: deserializer, headers: headers, description: description, isSaveQuery: isSaveQuery);
  }

  @override
  Future<RESP> get<RESP>(Uri path,
      {Map<String, dynamic>? queryParameters,
      Serializer? deserializer,
      Map<String, String>? headers,
      required String description,
      required bool isSaveQuery}) async {
    final request = Request(_methodGet, path);
    _interceptRequest(request);
    if (_isLoggingEnabled) {
      _printRequestLog(_methodGet, request);
    }
    final response = await Response.fromStream(
      await client.send(request).catchError(
        (error, stackTrace) {
          logger.e('Error in get', error, stackTrace);
          throw error;
        },
      ),
    );

    if (_isLoggingEnabled) {
      _printResponseLog(_methodGet, response);
    }

    if (deserializer != null) {
      return serializers.deserializeWith(
        deserializer,
        jsonDecode(response.body),
      ) as RESP;
    } else {
      return response as RESP;
    }
  }

  void _interceptRequest(request) {
    try {
      final sortedInterceptors = interceptors.keys.toList()..sort();
      sortedInterceptors.forEach((key) => interceptors[key]!.intercept(request));
    } catch (error, stackTrace) {
      logger.e('Error in _interceptRequest', error, stackTrace);
      throw error;
    }
  }

  void _printResponseLog(String method, Response response) async {
    // debugPrint('$method ${response.request!.url}');
    // debugPrint('status: ${response.statusCode}');
    // debugPrint('content length: ${response.contentLength}');
    // if (_debugBody) {
    //   debugPrint('body: ${jsonDecode(response.body)}');
    // }
    String _headersLog = '';
    response.headers.forEach((key, value) {
      _headersLog += '\n';
      _headersLog += '\t$key: $value';
    });
    var logBody = """
    Type: $method
    Url:  ${response.request!.url}
    Status: ${response.statusCode}
    Length: ${response.contentLength}
    Headers: $_headersLog""";
    logger.i('Get Response: \n$logBody');
  }

  Future<void> _printRequestLog(String method, Request request) async {
    // debugPrint('$method ${request.url}');
    // request.headers.forEach((key, value) => debugPrint('$key: $value'));
    // debugPrint('body: ${request.body}');

    String _headersLog = '';
    request.headers.forEach((key, value) {
      _headersLog += '\n';
      _headersLog += '\t$key: $value';
    });
    var logBody = """ 
    Type: $method
    Url:  ${request.url}
    Headers: $_headersLog""";
    String _bodyLog = '';
    if (request.body.isNotEmpty) {
      _bodyLog = '';
      jsonDecode(request.body).forEach((key, value) {
        _bodyLog += '\n';
        _bodyLog += '\t$key: $value';
      });
      logBody += "\n    Body: $_bodyLog";
    }
    logger.i('Send Request: [${DateTime.now()}]\n$logBody');
  }

  void _printMultipartRequestLog(String method, MultipartRequest request) {
    // debugPrint('$method ${request.url}');
    // request.headers.forEach((key, value) => debugPrint('$key: $value'));
    // debugPrint('body: ${request.files}');

    String _headersLog = '';
    request.headers.forEach((key, value) {
      _headersLog += '\n';
      _headersLog += '\t$key: $value';
    });
    var logBody = """
    Type: $method
    Url:  ${request.url}
    Headers: $_headersLog""";
    String _fieldsLog = '';
    if (request.fields.isNotEmpty) {
      _fieldsLog = '';
      request.fields.forEach((key, value) {
        _fieldsLog += '\n';
        _fieldsLog += '\t$key: $value';
      });
      logBody += "\n    Fields: $_fieldsLog";
    }
    String _filesLog = '';
    if (request.files.isNotEmpty) {
      _filesLog = '';
      request.files.forEach((value) {
        _filesLog += '\n';
        _filesLog += '\tFileName: ${value.filename}\n';
        _filesLog += '\tContentType: ${value.contentType}\n';
        _filesLog += '\tLength: ${value.length}\n';
        _filesLog += '\tField: ${value.field}\n';
      });
      logBody += "\n    Files: $_filesLog";
    }

    logger.i('Send Multipart Request: [${DateTime.now()}]\n$logBody');
  }

  NotSentRequestModel createRequestModel(String? description, String? url, String? request, String? filePath,
      Map<String, String>? requestFields, Map<String, String>? headers) {
    return NotSentRequestModel((builder) => builder
      ..timeSending = DateTime.now().toIso8601String()
      ..description = description
      ..url = url
      ..request = request
      ..filePath = filePath
      ..requestFields = requestFields != null ? (new BuiltMap<String, String>.from(requestFields)).toBuilder() : null
      ..headers = headers != null ? (new BuiltMap<String, String>.from(headers)).toBuilder() : null);
  }
}
