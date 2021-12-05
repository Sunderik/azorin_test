// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_executor_info_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamExecutorInfoResponse> _$teamExecutorInfoResponseSerializer =
    new _$TeamExecutorInfoResponseSerializer();

class _$TeamExecutorInfoResponseSerializer
    implements StructuredSerializer<TeamExecutorInfoResponse> {
  @override
  final Iterable<Type> types = const [
    TeamExecutorInfoResponse,
    _$TeamExecutorInfoResponse
  ];
  @override
  final String wireName = 'TeamExecutorInfoResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TeamExecutorInfoResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.executor;
    if (value != null) {
      result
        ..add('executor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Executor)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.request;
    if (value != null) {
      result
        ..add('request')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(TeamExecutorInfoRequest)));
    }
    value = object.httpCode;
    if (value != null) {
      result
        ..add('httpCode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  TeamExecutorInfoResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamExecutorInfoResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'executor':
          result.executor.replace(serializers.deserialize(value,
              specifiedType: const FullType(Executor))! as Executor);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'request':
          result.request.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TeamExecutorInfoRequest))!
              as TeamExecutorInfoRequest);
          break;
        case 'httpCode':
          result.httpCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TeamExecutorInfoResponse extends TeamExecutorInfoResponse {
  @override
  final Executor? executor;
  @override
  final String? message;
  @override
  final TeamExecutorInfoRequest? request;
  @override
  final int? httpCode;

  factory _$TeamExecutorInfoResponse(
          [void Function(TeamExecutorInfoResponseBuilder)? updates]) =>
      (new TeamExecutorInfoResponseBuilder()..update(updates)).build();

  _$TeamExecutorInfoResponse._(
      {this.executor, this.message, this.request, this.httpCode})
      : super._();

  @override
  TeamExecutorInfoResponse rebuild(
          void Function(TeamExecutorInfoResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamExecutorInfoResponseBuilder toBuilder() =>
      new TeamExecutorInfoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamExecutorInfoResponse &&
        executor == other.executor &&
        message == other.message &&
        request == other.request &&
        httpCode == other.httpCode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, executor.hashCode), message.hashCode), request.hashCode),
        httpCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamExecutorInfoResponse')
          ..add('executor', executor)
          ..add('message', message)
          ..add('request', request)
          ..add('httpCode', httpCode))
        .toString();
  }
}

class TeamExecutorInfoResponseBuilder
    implements
        Builder<TeamExecutorInfoResponse, TeamExecutorInfoResponseBuilder>,
        BaseModelBuilder {
  _$TeamExecutorInfoResponse? _$v;

  ExecutorBuilder? _executor;
  ExecutorBuilder get executor => _$this._executor ??= new ExecutorBuilder();
  set executor(covariant ExecutorBuilder? executor) =>
      _$this._executor = executor;

  String? _message;
  String? get message => _$this._message;
  set message(covariant String? message) => _$this._message = message;

  TeamExecutorInfoRequestBuilder? _request;
  TeamExecutorInfoRequestBuilder get request =>
      _$this._request ??= new TeamExecutorInfoRequestBuilder();
  set request(covariant TeamExecutorInfoRequestBuilder? request) =>
      _$this._request = request;

  int? _httpCode;
  int? get httpCode => _$this._httpCode;
  set httpCode(covariant int? httpCode) => _$this._httpCode = httpCode;

  TeamExecutorInfoResponseBuilder();

  TeamExecutorInfoResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _executor = $v.executor?.toBuilder();
      _message = $v.message;
      _request = $v.request?.toBuilder();
      _httpCode = $v.httpCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TeamExecutorInfoResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamExecutorInfoResponse;
  }

  @override
  void update(void Function(TeamExecutorInfoResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamExecutorInfoResponse build() {
    _$TeamExecutorInfoResponse _$result;
    try {
      _$result = _$v ??
          new _$TeamExecutorInfoResponse._(
              executor: _executor?.build(),
              message: message,
              request: _request?.build(),
              httpCode: httpCode);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'executor';
        _executor?.build();

        _$failedField = 'request';
        _request?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TeamExecutorInfoResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
