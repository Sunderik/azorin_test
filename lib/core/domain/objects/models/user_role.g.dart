// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserRole> _$userRoleSerializer = new _$UserRoleSerializer();

class _$UserRoleSerializer implements StructuredSerializer<UserRole> {
  @override
  final Iterable<Type> types = const [UserRole, _$UserRole];
  @override
  final String wireName = 'UserRole';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserRole object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.group;
    if (value != null) {
      result
        ..add('group')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.factory;
    if (value != null) {
      result
        ..add('factory')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.system;
    if (value != null) {
      result
        ..add('system')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.project;
    if (value != null) {
      result
        ..add('project')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.typeGuid;
    if (value != null) {
      result
        ..add('typeGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.statusGuid;
    if (value != null) {
      result
        ..add('statusGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.roleGuid;
    if (value != null) {
      result
        ..add('roleGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentDay;
    if (value != null) {
      result
        ..add('currentDay')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shiftStatus;
    if (value != null) {
      result
        ..add('shiftStatus')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  UserRole deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserRoleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'group':
          result.group.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'factory':
          result.factory.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'system':
          result.system.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'project':
          result.project.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'typeGuid':
          result.typeGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'statusGuid':
          result.statusGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'roleGuid':
          result.roleGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currentDay':
          result.currentDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shiftStatus':
          result.shiftStatus = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$UserRole extends UserRole {
  @override
  final SimpleType? group;
  @override
  final SimpleType? factory;
  @override
  final SimpleType? system;
  @override
  final SimpleType? project;
  @override
  final String? typeGuid;
  @override
  final String? statusGuid;
  @override
  final String? roleGuid;
  @override
  final String? currentDay;
  @override
  final bool? shiftStatus;

  factory _$UserRole([void Function(UserRoleBuilder)? updates]) =>
      (new UserRoleBuilder()..update(updates)).build();

  _$UserRole._(
      {this.group,
      this.factory,
      this.system,
      this.project,
      this.typeGuid,
      this.statusGuid,
      this.roleGuid,
      this.currentDay,
      this.shiftStatus})
      : super._();

  @override
  UserRole rebuild(void Function(UserRoleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRoleBuilder toBuilder() => new UserRoleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRole &&
        group == other.group &&
        factory == other.factory &&
        system == other.system &&
        project == other.project &&
        typeGuid == other.typeGuid &&
        statusGuid == other.statusGuid &&
        roleGuid == other.roleGuid &&
        currentDay == other.currentDay &&
        shiftStatus == other.shiftStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, group.hashCode), factory.hashCode),
                                system.hashCode),
                            project.hashCode),
                        typeGuid.hashCode),
                    statusGuid.hashCode),
                roleGuid.hashCode),
            currentDay.hashCode),
        shiftStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserRole')
          ..add('group', group)
          ..add('factory', factory)
          ..add('system', system)
          ..add('project', project)
          ..add('typeGuid', typeGuid)
          ..add('statusGuid', statusGuid)
          ..add('roleGuid', roleGuid)
          ..add('currentDay', currentDay)
          ..add('shiftStatus', shiftStatus))
        .toString();
  }
}

class UserRoleBuilder implements Builder<UserRole, UserRoleBuilder> {
  _$UserRole? _$v;

  SimpleTypeBuilder? _group;
  SimpleTypeBuilder get group => _$this._group ??= new SimpleTypeBuilder();
  set group(SimpleTypeBuilder? group) => _$this._group = group;

  SimpleTypeBuilder? _factory;
  SimpleTypeBuilder get factory => _$this._factory ??= new SimpleTypeBuilder();
  set factory(SimpleTypeBuilder? factory) => _$this._factory = factory;

  SimpleTypeBuilder? _system;
  SimpleTypeBuilder get system => _$this._system ??= new SimpleTypeBuilder();
  set system(SimpleTypeBuilder? system) => _$this._system = system;

  SimpleTypeBuilder? _project;
  SimpleTypeBuilder get project => _$this._project ??= new SimpleTypeBuilder();
  set project(SimpleTypeBuilder? project) => _$this._project = project;

  String? _typeGuid;
  String? get typeGuid => _$this._typeGuid;
  set typeGuid(String? typeGuid) => _$this._typeGuid = typeGuid;

  String? _statusGuid;
  String? get statusGuid => _$this._statusGuid;
  set statusGuid(String? statusGuid) => _$this._statusGuid = statusGuid;

  String? _roleGuid;
  String? get roleGuid => _$this._roleGuid;
  set roleGuid(String? roleGuid) => _$this._roleGuid = roleGuid;

  String? _currentDay;
  String? get currentDay => _$this._currentDay;
  set currentDay(String? currentDay) => _$this._currentDay = currentDay;

  bool? _shiftStatus;
  bool? get shiftStatus => _$this._shiftStatus;
  set shiftStatus(bool? shiftStatus) => _$this._shiftStatus = shiftStatus;

  UserRoleBuilder();

  UserRoleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _group = $v.group?.toBuilder();
      _factory = $v.factory?.toBuilder();
      _system = $v.system?.toBuilder();
      _project = $v.project?.toBuilder();
      _typeGuid = $v.typeGuid;
      _statusGuid = $v.statusGuid;
      _roleGuid = $v.roleGuid;
      _currentDay = $v.currentDay;
      _shiftStatus = $v.shiftStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRole other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRole;
  }

  @override
  void update(void Function(UserRoleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserRole build() {
    _$UserRole _$result;
    try {
      _$result = _$v ??
          new _$UserRole._(
              group: _group?.build(),
              factory: _factory?.build(),
              system: _system?.build(),
              project: _project?.build(),
              typeGuid: typeGuid,
              statusGuid: statusGuid,
              roleGuid: roleGuid,
              currentDay: currentDay,
              shiftStatus: shiftStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'group';
        _group?.build();
        _$failedField = 'factory';
        _factory?.build();
        _$failedField = 'system';
        _system?.build();
        _$failedField = 'project';
        _project?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserRole', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
