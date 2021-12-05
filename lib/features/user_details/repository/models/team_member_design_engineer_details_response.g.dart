// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_member_design_engineer_details_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamMemberDesignEngineerDetailsResponse>
    _$teamMemberDesignEngineerDetailsResponseSerializer =
    new _$TeamMemberDesignEngineerDetailsResponseSerializer();

class _$TeamMemberDesignEngineerDetailsResponseSerializer
    implements StructuredSerializer<TeamMemberDesignEngineerDetailsResponse> {
  @override
  final Iterable<Type> types = const [
    TeamMemberDesignEngineerDetailsResponse,
    _$TeamMemberDesignEngineerDetailsResponse
  ];
  @override
  final String wireName = 'TeamMemberDesignEngineerDetailsResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TeamMemberDesignEngineerDetailsResponse object,
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
    value = object.fullName;
    if (value != null) {
      result
        ..add('fullName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shortName;
    if (value != null) {
      result
        ..add('shortName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.surname;
    if (value != null) {
      result
        ..add('surname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.patronymic;
    if (value != null) {
      result
        ..add('patronymic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email2;
    if (value != null) {
      result
        ..add('email2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneFirst;
    if (value != null) {
      result
        ..add('phoneFirst')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneSecond;
    if (value != null) {
      result
        ..add('phoneSecond')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.speciality;
    if (value != null) {
      result
        ..add('speciality')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.workPlace;
    if (value != null) {
      result
        ..add('workPlace')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.branch;
    if (value != null) {
      result
        ..add('branch')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.department;
    if (value != null) {
      result
        ..add('department')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.unity;
    if (value != null) {
      result
        ..add('unity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.unityName;
    if (value != null) {
      result
        ..add('unityName')
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
            specifiedType:
                const FullType(TeamMemberDesignEngineerDetailsRequest)));
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
  TeamMemberDesignEngineerDetailsResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamMemberDesignEngineerDetailsResponseBuilder();

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
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shortName':
          result.shortName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'surname':
          result.surname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'patronymic':
          result.patronymic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email2':
          result.email2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneFirst':
          result.phoneFirst = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneSecond':
          result.phoneSecond = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'speciality':
          result.speciality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'workPlace':
          result.workPlace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'branch':
          result.branch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'department':
          result.department = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'unity':
          result.unity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'unityName':
          result.unityName = serializers.deserialize(value,
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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'request':
          result.request.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(TeamMemberDesignEngineerDetailsRequest))!
              as TeamMemberDesignEngineerDetailsRequest);
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

class _$TeamMemberDesignEngineerDetailsResponse
    extends TeamMemberDesignEngineerDetailsResponse {
  @override
  final String? guid;
  @override
  final String? fullName;
  @override
  final String? shortName;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? patronymic;
  @override
  final String? description;
  @override
  final String? email;
  @override
  final String? email2;
  @override
  final String? phoneFirst;
  @override
  final String? phoneSecond;
  @override
  final String? speciality;
  @override
  final String? role;
  @override
  final String? workPlace;
  @override
  final String? branch;
  @override
  final String? department;
  @override
  final String? unity;
  @override
  final String? unityName;
  @override
  final bool? status;
  @override
  final String? reasonForAbsence;
  @override
  final String? message;
  @override
  final TeamMemberDesignEngineerDetailsRequest? request;
  @override
  final int? httpCode;

  factory _$TeamMemberDesignEngineerDetailsResponse(
          [void Function(TeamMemberDesignEngineerDetailsResponseBuilder)?
              updates]) =>
      (new TeamMemberDesignEngineerDetailsResponseBuilder()..update(updates))
          .build();

  _$TeamMemberDesignEngineerDetailsResponse._(
      {this.guid,
      this.fullName,
      this.shortName,
      this.name,
      this.surname,
      this.patronymic,
      this.description,
      this.email,
      this.email2,
      this.phoneFirst,
      this.phoneSecond,
      this.speciality,
      this.role,
      this.workPlace,
      this.branch,
      this.department,
      this.unity,
      this.unityName,
      this.status,
      this.reasonForAbsence,
      this.message,
      this.request,
      this.httpCode})
      : super._();

  @override
  TeamMemberDesignEngineerDetailsResponse rebuild(
          void Function(TeamMemberDesignEngineerDetailsResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamMemberDesignEngineerDetailsResponseBuilder toBuilder() =>
      new TeamMemberDesignEngineerDetailsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamMemberDesignEngineerDetailsResponse &&
        guid == other.guid &&
        fullName == other.fullName &&
        shortName == other.shortName &&
        name == other.name &&
        surname == other.surname &&
        patronymic == other.patronymic &&
        description == other.description &&
        email == other.email &&
        email2 == other.email2 &&
        phoneFirst == other.phoneFirst &&
        phoneSecond == other.phoneSecond &&
        speciality == other.speciality &&
        role == other.role &&
        workPlace == other.workPlace &&
        branch == other.branch &&
        department == other.department &&
        unity == other.unity &&
        unityName == other.unityName &&
        status == other.status &&
        reasonForAbsence == other.reasonForAbsence &&
        message == other.message &&
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
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc(0, guid.hashCode), fullName.hashCode), shortName.hashCode), name.hashCode),
                                                                                surname.hashCode),
                                                                            patronymic.hashCode),
                                                                        description.hashCode),
                                                                    email.hashCode),
                                                                email2.hashCode),
                                                            phoneFirst.hashCode),
                                                        phoneSecond.hashCode),
                                                    speciality.hashCode),
                                                role.hashCode),
                                            workPlace.hashCode),
                                        branch.hashCode),
                                    department.hashCode),
                                unity.hashCode),
                            unityName.hashCode),
                        status.hashCode),
                    reasonForAbsence.hashCode),
                message.hashCode),
            request.hashCode),
        httpCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'TeamMemberDesignEngineerDetailsResponse')
          ..add('guid', guid)
          ..add('fullName', fullName)
          ..add('shortName', shortName)
          ..add('name', name)
          ..add('surname', surname)
          ..add('patronymic', patronymic)
          ..add('description', description)
          ..add('email', email)
          ..add('email2', email2)
          ..add('phoneFirst', phoneFirst)
          ..add('phoneSecond', phoneSecond)
          ..add('speciality', speciality)
          ..add('role', role)
          ..add('workPlace', workPlace)
          ..add('branch', branch)
          ..add('department', department)
          ..add('unity', unity)
          ..add('unityName', unityName)
          ..add('status', status)
          ..add('reasonForAbsence', reasonForAbsence)
          ..add('message', message)
          ..add('request', request)
          ..add('httpCode', httpCode))
        .toString();
  }
}

class TeamMemberDesignEngineerDetailsResponseBuilder
    implements
        Builder<TeamMemberDesignEngineerDetailsResponse,
            TeamMemberDesignEngineerDetailsResponseBuilder>,
        BaseModelBuilder {
  _$TeamMemberDesignEngineerDetailsResponse? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(covariant String? guid) => _$this._guid = guid;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(covariant String? fullName) => _$this._fullName = fullName;

  String? _shortName;
  String? get shortName => _$this._shortName;
  set shortName(covariant String? shortName) => _$this._shortName = shortName;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _surname;
  String? get surname => _$this._surname;
  set surname(covariant String? surname) => _$this._surname = surname;

  String? _patronymic;
  String? get patronymic => _$this._patronymic;
  set patronymic(covariant String? patronymic) =>
      _$this._patronymic = patronymic;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  String? _email;
  String? get email => _$this._email;
  set email(covariant String? email) => _$this._email = email;

  String? _email2;
  String? get email2 => _$this._email2;
  set email2(covariant String? email2) => _$this._email2 = email2;

  String? _phoneFirst;
  String? get phoneFirst => _$this._phoneFirst;
  set phoneFirst(covariant String? phoneFirst) =>
      _$this._phoneFirst = phoneFirst;

  String? _phoneSecond;
  String? get phoneSecond => _$this._phoneSecond;
  set phoneSecond(covariant String? phoneSecond) =>
      _$this._phoneSecond = phoneSecond;

  String? _speciality;
  String? get speciality => _$this._speciality;
  set speciality(covariant String? speciality) =>
      _$this._speciality = speciality;

  String? _role;
  String? get role => _$this._role;
  set role(covariant String? role) => _$this._role = role;

  String? _workPlace;
  String? get workPlace => _$this._workPlace;
  set workPlace(covariant String? workPlace) => _$this._workPlace = workPlace;

  String? _branch;
  String? get branch => _$this._branch;
  set branch(covariant String? branch) => _$this._branch = branch;

  String? _department;
  String? get department => _$this._department;
  set department(covariant String? department) =>
      _$this._department = department;

  String? _unity;
  String? get unity => _$this._unity;
  set unity(covariant String? unity) => _$this._unity = unity;

  String? _unityName;
  String? get unityName => _$this._unityName;
  set unityName(covariant String? unityName) => _$this._unityName = unityName;

  bool? _status;
  bool? get status => _$this._status;
  set status(covariant bool? status) => _$this._status = status;

  String? _reasonForAbsence;
  String? get reasonForAbsence => _$this._reasonForAbsence;
  set reasonForAbsence(covariant String? reasonForAbsence) =>
      _$this._reasonForAbsence = reasonForAbsence;

  String? _message;
  String? get message => _$this._message;
  set message(covariant String? message) => _$this._message = message;

  TeamMemberDesignEngineerDetailsRequestBuilder? _request;
  TeamMemberDesignEngineerDetailsRequestBuilder get request =>
      _$this._request ??= new TeamMemberDesignEngineerDetailsRequestBuilder();
  set request(
          covariant TeamMemberDesignEngineerDetailsRequestBuilder? request) =>
      _$this._request = request;

  int? _httpCode;
  int? get httpCode => _$this._httpCode;
  set httpCode(covariant int? httpCode) => _$this._httpCode = httpCode;

  TeamMemberDesignEngineerDetailsResponseBuilder();

  TeamMemberDesignEngineerDetailsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _fullName = $v.fullName;
      _shortName = $v.shortName;
      _name = $v.name;
      _surname = $v.surname;
      _patronymic = $v.patronymic;
      _description = $v.description;
      _email = $v.email;
      _email2 = $v.email2;
      _phoneFirst = $v.phoneFirst;
      _phoneSecond = $v.phoneSecond;
      _speciality = $v.speciality;
      _role = $v.role;
      _workPlace = $v.workPlace;
      _branch = $v.branch;
      _department = $v.department;
      _unity = $v.unity;
      _unityName = $v.unityName;
      _status = $v.status;
      _reasonForAbsence = $v.reasonForAbsence;
      _message = $v.message;
      _request = $v.request?.toBuilder();
      _httpCode = $v.httpCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TeamMemberDesignEngineerDetailsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamMemberDesignEngineerDetailsResponse;
  }

  @override
  void update(
      void Function(TeamMemberDesignEngineerDetailsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamMemberDesignEngineerDetailsResponse build() {
    _$TeamMemberDesignEngineerDetailsResponse _$result;
    try {
      _$result = _$v ??
          new _$TeamMemberDesignEngineerDetailsResponse._(
              guid: guid,
              fullName: fullName,
              shortName: shortName,
              name: name,
              surname: surname,
              patronymic: patronymic,
              description: description,
              email: email,
              email2: email2,
              phoneFirst: phoneFirst,
              phoneSecond: phoneSecond,
              speciality: speciality,
              role: role,
              workPlace: workPlace,
              branch: branch,
              department: department,
              unity: unity,
              unityName: unityName,
              status: status,
              reasonForAbsence: reasonForAbsence,
              message: message,
              request: _request?.build(),
              httpCode: httpCode);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'request';
        _request?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TeamMemberDesignEngineerDetailsResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
