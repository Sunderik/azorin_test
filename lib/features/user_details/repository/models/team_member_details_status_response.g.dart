// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_member_details_status_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamMemberDetailsStatusResponse>
    _$teamMemberDetailsStatusResponseSerializer =
    new _$TeamMemberDetailsStatusResponseSerializer();

class _$TeamMemberDetailsStatusResponseSerializer
    implements StructuredSerializer<TeamMemberDetailsStatusResponse> {
  @override
  final Iterable<Type> types = const [
    TeamMemberDetailsStatusResponse,
    _$TeamMemberDetailsStatusResponse
  ];
  @override
  final String wireName = 'TeamMemberDetailsStatusResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TeamMemberDetailsStatusResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.guid;
    if (value != null) {
      result
        ..add('guid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reasonForAbsence;
    if (value != null) {
      result
        ..add('reasonForAbsence')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gps;
    if (value != null) {
      result
        ..add('gps')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Coordinates)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workplace;
    if (value != null) {
      result
        ..add('workplace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.request;
    if (value != null) {
      result
        ..add('request')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(TeamMemberDetailsStatusRequest)));
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
  TeamMemberDetailsStatusResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamMemberDetailsStatusResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'guid':
          result.guid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'reasonForAbsence':
          result.reasonForAbsence = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gps':
          result.gps.replace(serializers.deserialize(value,
              specifiedType: const FullType(Coordinates))! as Coordinates);
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'workplace':
          result.workplace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'request':
          result.request.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(TeamMemberDetailsStatusRequest))!
              as TeamMemberDetailsStatusRequest);
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

class _$TeamMemberDetailsStatusResponse
    extends TeamMemberDetailsStatusResponse {
  @override
  final String? guid;
  @override
  final bool? status;
  @override
  final String? reasonForAbsence;
  @override
  final Coordinates? gps;
  @override
  final String? image;
  @override
  final String? message;
  @override
  final String? workplace;
  @override
  final TeamMemberDetailsStatusRequest? request;
  @override
  final int? httpCode;

  factory _$TeamMemberDetailsStatusResponse(
          [void Function(TeamMemberDetailsStatusResponseBuilder)? updates]) =>
      (new TeamMemberDetailsStatusResponseBuilder()..update(updates)).build();

  _$TeamMemberDetailsStatusResponse._(
      {this.guid,
      this.status,
      this.reasonForAbsence,
      this.gps,
      this.image,
      this.message,
      this.workplace,
      this.request,
      this.httpCode})
      : super._();

  @override
  TeamMemberDetailsStatusResponse rebuild(
          void Function(TeamMemberDetailsStatusResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamMemberDetailsStatusResponseBuilder toBuilder() =>
      new TeamMemberDetailsStatusResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamMemberDetailsStatusResponse &&
        guid == other.guid &&
        status == other.status &&
        reasonForAbsence == other.reasonForAbsence &&
        gps == other.gps &&
        image == other.image &&
        message == other.message &&
        workplace == other.workplace &&
        request == other.request &&
        httpCode == other.httpCode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, guid.hashCode), status.hashCode),
                                reasonForAbsence.hashCode),
                            gps.hashCode),
                        image.hashCode),
                    message.hashCode),
                workplace.hashCode),
            request.hashCode),
        httpCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamMemberDetailsStatusResponse')
          ..add('guid', guid)
          ..add('status', status)
          ..add('reasonForAbsence', reasonForAbsence)
          ..add('gps', gps)
          ..add('image', image)
          ..add('message', message)
          ..add('workplace', workplace)
          ..add('request', request)
          ..add('httpCode', httpCode))
        .toString();
  }
}

class TeamMemberDetailsStatusResponseBuilder
    implements
        Builder<TeamMemberDetailsStatusResponse,
            TeamMemberDetailsStatusResponseBuilder>,
        BaseModelBuilder {
  _$TeamMemberDetailsStatusResponse? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(covariant String? guid) => _$this._guid = guid;

  bool? _status;
  bool? get status => _$this._status;
  set status(covariant bool? status) => _$this._status = status;

  String? _reasonForAbsence;
  String? get reasonForAbsence => _$this._reasonForAbsence;
  set reasonForAbsence(covariant String? reasonForAbsence) =>
      _$this._reasonForAbsence = reasonForAbsence;

  CoordinatesBuilder? _gps;
  CoordinatesBuilder get gps => _$this._gps ??= new CoordinatesBuilder();
  set gps(covariant CoordinatesBuilder? gps) => _$this._gps = gps;

  String? _image;
  String? get image => _$this._image;
  set image(covariant String? image) => _$this._image = image;

  String? _message;
  String? get message => _$this._message;
  set message(covariant String? message) => _$this._message = message;

  String? _workplace;
  String? get workplace => _$this._workplace;
  set workplace(covariant String? workplace) => _$this._workplace = workplace;

  TeamMemberDetailsStatusRequestBuilder? _request;
  TeamMemberDetailsStatusRequestBuilder get request =>
      _$this._request ??= new TeamMemberDetailsStatusRequestBuilder();
  set request(covariant TeamMemberDetailsStatusRequestBuilder? request) =>
      _$this._request = request;

  int? _httpCode;
  int? get httpCode => _$this._httpCode;
  set httpCode(covariant int? httpCode) => _$this._httpCode = httpCode;

  TeamMemberDetailsStatusResponseBuilder();

  TeamMemberDetailsStatusResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _status = $v.status;
      _reasonForAbsence = $v.reasonForAbsence;
      _gps = $v.gps?.toBuilder();
      _image = $v.image;
      _message = $v.message;
      _workplace = $v.workplace;
      _request = $v.request?.toBuilder();
      _httpCode = $v.httpCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TeamMemberDetailsStatusResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamMemberDetailsStatusResponse;
  }

  @override
  void update(void Function(TeamMemberDetailsStatusResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamMemberDetailsStatusResponse build() {
    _$TeamMemberDetailsStatusResponse _$result;
    try {
      _$result = _$v ??
          new _$TeamMemberDetailsStatusResponse._(
              guid: guid,
              status: status,
              reasonForAbsence: reasonForAbsence,
              gps: _gps?.build(),
              image: image,
              message: message,
              workplace: workplace,
              request: _request?.build(),
              httpCode: httpCode);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'gps';
        _gps?.build();

        _$failedField = 'request';
        _request?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TeamMemberDetailsStatusResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
