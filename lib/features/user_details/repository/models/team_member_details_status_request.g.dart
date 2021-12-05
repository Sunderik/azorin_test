// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_member_details_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamMemberDetailsStatusRequest>
    _$teamMemberDetailsStatusRequestSerializer =
    new _$TeamMemberDetailsStatusRequestSerializer();

class _$TeamMemberDetailsStatusRequestSerializer
    implements StructuredSerializer<TeamMemberDetailsStatusRequest> {
  @override
  final Iterable<Type> types = const [
    TeamMemberDetailsStatusRequest,
    _$TeamMemberDetailsStatusRequest
  ];
  @override
  final String wireName = 'TeamMemberDetailsStatusRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TeamMemberDetailsStatusRequest object,
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
    value = object.projectGuid;
    if (value != null) {
      result
        ..add('projectGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reasonForAbsence;
    if (value != null) {
      result
        ..add('reasonForAbsence')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reasonForAbsenceComment;
    if (value != null) {
      result
        ..add('reasonForAbsenceComment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.coordinates;
    if (value != null) {
      result
        ..add('coordinates')
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
    value = object.workplace;
    if (value != null) {
      result
        ..add('workplace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TeamMemberDetailsStatusRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamMemberDetailsStatusRequestBuilder();

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
        case 'projectGuid':
          result.projectGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reasonForAbsence':
          result.reasonForAbsence = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reasonForAbsenceComment':
          result.reasonForAbsenceComment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'coordinates':
          result.coordinates.replace(serializers.deserialize(value,
              specifiedType: const FullType(Coordinates))! as Coordinates);
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'workplace':
          result.workplace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TeamMemberDetailsStatusRequest extends TeamMemberDetailsStatusRequest {
  @override
  final String? guid;
  @override
  final bool? status;
  @override
  final String? projectGuid;
  @override
  final String? reasonForAbsence;
  @override
  final String? reasonForAbsenceComment;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final Coordinates? coordinates;
  @override
  final String? image;
  @override
  final String? workplace;

  factory _$TeamMemberDetailsStatusRequest(
          [void Function(TeamMemberDetailsStatusRequestBuilder)? updates]) =>
      (new TeamMemberDetailsStatusRequestBuilder()..update(updates)).build();

  _$TeamMemberDetailsStatusRequest._(
      {this.guid,
      this.status,
      this.projectGuid,
      this.reasonForAbsence,
      this.reasonForAbsenceComment,
      this.startDate,
      this.endDate,
      this.coordinates,
      this.image,
      this.workplace})
      : super._();

  @override
  TeamMemberDetailsStatusRequest rebuild(
          void Function(TeamMemberDetailsStatusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamMemberDetailsStatusRequestBuilder toBuilder() =>
      new TeamMemberDetailsStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamMemberDetailsStatusRequest &&
        guid == other.guid &&
        status == other.status &&
        projectGuid == other.projectGuid &&
        reasonForAbsence == other.reasonForAbsence &&
        reasonForAbsenceComment == other.reasonForAbsenceComment &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        coordinates == other.coordinates &&
        image == other.image &&
        workplace == other.workplace;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, guid.hashCode), status.hashCode),
                                    projectGuid.hashCode),
                                reasonForAbsence.hashCode),
                            reasonForAbsenceComment.hashCode),
                        startDate.hashCode),
                    endDate.hashCode),
                coordinates.hashCode),
            image.hashCode),
        workplace.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamMemberDetailsStatusRequest')
          ..add('guid', guid)
          ..add('status', status)
          ..add('projectGuid', projectGuid)
          ..add('reasonForAbsence', reasonForAbsence)
          ..add('reasonForAbsenceComment', reasonForAbsenceComment)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('coordinates', coordinates)
          ..add('image', image)
          ..add('workplace', workplace))
        .toString();
  }
}

class TeamMemberDetailsStatusRequestBuilder
    implements
        Builder<TeamMemberDetailsStatusRequest,
            TeamMemberDetailsStatusRequestBuilder> {
  _$TeamMemberDetailsStatusRequest? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _projectGuid;
  String? get projectGuid => _$this._projectGuid;
  set projectGuid(String? projectGuid) => _$this._projectGuid = projectGuid;

  String? _reasonForAbsence;
  String? get reasonForAbsence => _$this._reasonForAbsence;
  set reasonForAbsence(String? reasonForAbsence) =>
      _$this._reasonForAbsence = reasonForAbsence;

  String? _reasonForAbsenceComment;
  String? get reasonForAbsenceComment => _$this._reasonForAbsenceComment;
  set reasonForAbsenceComment(String? reasonForAbsenceComment) =>
      _$this._reasonForAbsenceComment = reasonForAbsenceComment;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  CoordinatesBuilder? _coordinates;
  CoordinatesBuilder get coordinates =>
      _$this._coordinates ??= new CoordinatesBuilder();
  set coordinates(CoordinatesBuilder? coordinates) =>
      _$this._coordinates = coordinates;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _workplace;
  String? get workplace => _$this._workplace;
  set workplace(String? workplace) => _$this._workplace = workplace;

  TeamMemberDetailsStatusRequestBuilder();

  TeamMemberDetailsStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _status = $v.status;
      _projectGuid = $v.projectGuid;
      _reasonForAbsence = $v.reasonForAbsence;
      _reasonForAbsenceComment = $v.reasonForAbsenceComment;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _coordinates = $v.coordinates?.toBuilder();
      _image = $v.image;
      _workplace = $v.workplace;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamMemberDetailsStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamMemberDetailsStatusRequest;
  }

  @override
  void update(void Function(TeamMemberDetailsStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamMemberDetailsStatusRequest build() {
    _$TeamMemberDetailsStatusRequest _$result;
    try {
      _$result = _$v ??
          new _$TeamMemberDetailsStatusRequest._(
              guid: guid,
              status: status,
              projectGuid: projectGuid,
              reasonForAbsence: reasonForAbsence,
              reasonForAbsenceComment: reasonForAbsenceComment,
              startDate: startDate,
              endDate: endDate,
              coordinates: _coordinates?.build(),
              image: image,
              workplace: workplace);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coordinates';
        _coordinates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TeamMemberDetailsStatusRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
