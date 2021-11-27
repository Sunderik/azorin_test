// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Employee> _$employeeSerializer = new _$EmployeeSerializer();

class _$EmployeeSerializer implements StructuredSerializer<Employee> {
  @override
  final Iterable<Type> types = const [Employee, _$Employee];
  @override
  final String wireName = 'Employee';

  @override
  Iterable<Object?> serialize(Serializers serializers, Employee object,
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
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
    return result;
  }

  @override
  Employee deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmployeeBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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
        case 'unity':
          result.unity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'unityName':
          result.unityName = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$Employee extends Employee {
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
  final bool? status;
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
  final String? unity;
  @override
  final String? unityName;
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

  factory _$Employee([void Function(EmployeeBuilder)? updates]) =>
      (new EmployeeBuilder()..update(updates)).build();

  _$Employee._(
      {this.guid,
      this.fullName,
      this.shortName,
      this.name,
      this.surname,
      this.patronymic,
      this.status,
      this.description,
      this.email,
      this.email2,
      this.phoneFirst,
      this.phoneSecond,
      this.unity,
      this.unityName,
      this.speciality,
      this.role,
      this.workPlace,
      this.branch,
      this.department})
      : super._();

  @override
  Employee rebuild(void Function(EmployeeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmployeeBuilder toBuilder() => new EmployeeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Employee &&
        guid == other.guid &&
        fullName == other.fullName &&
        shortName == other.shortName &&
        name == other.name &&
        surname == other.surname &&
        patronymic == other.patronymic &&
        status == other.status &&
        description == other.description &&
        email == other.email &&
        email2 == other.email2 &&
        phoneFirst == other.phoneFirst &&
        phoneSecond == other.phoneSecond &&
        unity == other.unity &&
        unityName == other.unityName &&
        speciality == other.speciality &&
        role == other.role &&
        workPlace == other.workPlace &&
        branch == other.branch &&
        department == other.department;
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
                                                                            $jc(
                                                                                0,
                                                                                guid
                                                                                    .hashCode),
                                                                            fullName
                                                                                .hashCode),
                                                                        shortName
                                                                            .hashCode),
                                                                    name
                                                                        .hashCode),
                                                                surname
                                                                    .hashCode),
                                                            patronymic
                                                                .hashCode),
                                                        status.hashCode),
                                                    description.hashCode),
                                                email.hashCode),
                                            email2.hashCode),
                                        phoneFirst.hashCode),
                                    phoneSecond.hashCode),
                                unity.hashCode),
                            unityName.hashCode),
                        speciality.hashCode),
                    role.hashCode),
                workPlace.hashCode),
            branch.hashCode),
        department.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Employee')
          ..add('guid', guid)
          ..add('fullName', fullName)
          ..add('shortName', shortName)
          ..add('name', name)
          ..add('surname', surname)
          ..add('patronymic', patronymic)
          ..add('status', status)
          ..add('description', description)
          ..add('email', email)
          ..add('email2', email2)
          ..add('phoneFirst', phoneFirst)
          ..add('phoneSecond', phoneSecond)
          ..add('unity', unity)
          ..add('unityName', unityName)
          ..add('speciality', speciality)
          ..add('role', role)
          ..add('workPlace', workPlace)
          ..add('branch', branch)
          ..add('department', department))
        .toString();
  }
}

class EmployeeBuilder implements Builder<Employee, EmployeeBuilder> {
  _$Employee? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _shortName;
  String? get shortName => _$this._shortName;
  set shortName(String? shortName) => _$this._shortName = shortName;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _surname;
  String? get surname => _$this._surname;
  set surname(String? surname) => _$this._surname = surname;

  String? _patronymic;
  String? get patronymic => _$this._patronymic;
  set patronymic(String? patronymic) => _$this._patronymic = patronymic;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _email2;
  String? get email2 => _$this._email2;
  set email2(String? email2) => _$this._email2 = email2;

  String? _phoneFirst;
  String? get phoneFirst => _$this._phoneFirst;
  set phoneFirst(String? phoneFirst) => _$this._phoneFirst = phoneFirst;

  String? _phoneSecond;
  String? get phoneSecond => _$this._phoneSecond;
  set phoneSecond(String? phoneSecond) => _$this._phoneSecond = phoneSecond;

  String? _unity;
  String? get unity => _$this._unity;
  set unity(String? unity) => _$this._unity = unity;

  String? _unityName;
  String? get unityName => _$this._unityName;
  set unityName(String? unityName) => _$this._unityName = unityName;

  String? _speciality;
  String? get speciality => _$this._speciality;
  set speciality(String? speciality) => _$this._speciality = speciality;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _workPlace;
  String? get workPlace => _$this._workPlace;
  set workPlace(String? workPlace) => _$this._workPlace = workPlace;

  String? _branch;
  String? get branch => _$this._branch;
  set branch(String? branch) => _$this._branch = branch;

  String? _department;
  String? get department => _$this._department;
  set department(String? department) => _$this._department = department;

  EmployeeBuilder();

  EmployeeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _fullName = $v.fullName;
      _shortName = $v.shortName;
      _name = $v.name;
      _surname = $v.surname;
      _patronymic = $v.patronymic;
      _status = $v.status;
      _description = $v.description;
      _email = $v.email;
      _email2 = $v.email2;
      _phoneFirst = $v.phoneFirst;
      _phoneSecond = $v.phoneSecond;
      _unity = $v.unity;
      _unityName = $v.unityName;
      _speciality = $v.speciality;
      _role = $v.role;
      _workPlace = $v.workPlace;
      _branch = $v.branch;
      _department = $v.department;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Employee other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Employee;
  }

  @override
  void update(void Function(EmployeeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Employee build() {
    final _$result = _$v ??
        new _$Employee._(
            guid: guid,
            fullName: fullName,
            shortName: shortName,
            name: name,
            surname: surname,
            patronymic: patronymic,
            status: status,
            description: description,
            email: email,
            email2: email2,
            phoneFirst: phoneFirst,
            phoneSecond: phoneSecond,
            unity: unity,
            unityName: unityName,
            speciality: speciality,
            role: role,
            workPlace: workPlace,
            branch: branch,
            department: department);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
