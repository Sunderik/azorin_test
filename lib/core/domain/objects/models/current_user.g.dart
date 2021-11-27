// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrentUser> _$currentUserSerializer = new _$CurrentUserSerializer();

class _$CurrentUserSerializer implements StructuredSerializer<CurrentUser> {
  @override
  final Iterable<Type> types = const [CurrentUser, _$CurrentUser];
  @override
  final String wireName = 'CurrentUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, CurrentUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apiKey;
    if (value != null) {
      result
        ..add('apiKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isSigned;
    if (value != null) {
      result
        ..add('isSigned')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRoles;
    if (value != null) {
      result
        ..add('userRoles')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(UserRole)])));
    }
    value = object.sectionsP;
    if (value != null) {
      result
        ..add('sectionsP')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SimpleType)])));
    }
    value = object.sectionsR;
    if (value != null) {
      result
        ..add('sectionsR')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SimpleType)])));
    }
    value = object.permissions;
    if (value != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Permissions)));
    }
    return result;
  }

  @override
  CurrentUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'apiKey':
          result.apiKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isSigned':
          result.isSigned = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email2':
          result.email2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userRoles':
          result.userRoles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(UserRole)]))!
              as BuiltList<Object>);
          break;
        case 'sectionsP':
          result.sectionsP.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SimpleType)]))!
              as BuiltList<Object>);
          break;
        case 'sectionsR':
          result.sectionsR.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SimpleType)]))!
              as BuiltList<Object>);
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
              specifiedType: const FullType(Permissions))! as Permissions);
          break;
      }
    }

    return result.build();
  }
}

class _$CurrentUser extends CurrentUser {
  @override
  final String? id;
  @override
  final String? userName;
  @override
  final String? apiKey;
  @override
  final bool? isSigned;
  @override
  final String? email;
  @override
  final String? email2;
  @override
  final String? phone;
  @override
  final BuiltList<UserRole>? userRoles;
  @override
  final BuiltList<SimpleType>? sectionsP;
  @override
  final BuiltList<SimpleType>? sectionsR;
  @override
  final Permissions? permissions;

  factory _$CurrentUser([void Function(CurrentUserBuilder)? updates]) =>
      (new CurrentUserBuilder()..update(updates)).build();

  _$CurrentUser._(
      {this.id,
      this.userName,
      this.apiKey,
      this.isSigned,
      this.email,
      this.email2,
      this.phone,
      this.userRoles,
      this.sectionsP,
      this.sectionsR,
      this.permissions})
      : super._();

  @override
  CurrentUser rebuild(void Function(CurrentUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrentUserBuilder toBuilder() => new CurrentUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrentUser &&
        id == other.id &&
        userName == other.userName &&
        apiKey == other.apiKey &&
        isSigned == other.isSigned &&
        email == other.email &&
        email2 == other.email2 &&
        phone == other.phone &&
        userRoles == other.userRoles &&
        sectionsP == other.sectionsP &&
        sectionsR == other.sectionsR &&
        permissions == other.permissions;
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
                                        $jc($jc(0, id.hashCode),
                                            userName.hashCode),
                                        apiKey.hashCode),
                                    isSigned.hashCode),
                                email.hashCode),
                            email2.hashCode),
                        phone.hashCode),
                    userRoles.hashCode),
                sectionsP.hashCode),
            sectionsR.hashCode),
        permissions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CurrentUser')
          ..add('id', id)
          ..add('userName', userName)
          ..add('apiKey', apiKey)
          ..add('isSigned', isSigned)
          ..add('email', email)
          ..add('email2', email2)
          ..add('phone', phone)
          ..add('userRoles', userRoles)
          ..add('sectionsP', sectionsP)
          ..add('sectionsR', sectionsR)
          ..add('permissions', permissions))
        .toString();
  }
}

class CurrentUserBuilder implements Builder<CurrentUser, CurrentUserBuilder> {
  _$CurrentUser? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  bool? _isSigned;
  bool? get isSigned => _$this._isSigned;
  set isSigned(bool? isSigned) => _$this._isSigned = isSigned;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _email2;
  String? get email2 => _$this._email2;
  set email2(String? email2) => _$this._email2 = email2;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  ListBuilder<UserRole>? _userRoles;
  ListBuilder<UserRole> get userRoles =>
      _$this._userRoles ??= new ListBuilder<UserRole>();
  set userRoles(ListBuilder<UserRole>? userRoles) =>
      _$this._userRoles = userRoles;

  ListBuilder<SimpleType>? _sectionsP;
  ListBuilder<SimpleType> get sectionsP =>
      _$this._sectionsP ??= new ListBuilder<SimpleType>();
  set sectionsP(ListBuilder<SimpleType>? sectionsP) =>
      _$this._sectionsP = sectionsP;

  ListBuilder<SimpleType>? _sectionsR;
  ListBuilder<SimpleType> get sectionsR =>
      _$this._sectionsR ??= new ListBuilder<SimpleType>();
  set sectionsR(ListBuilder<SimpleType>? sectionsR) =>
      _$this._sectionsR = sectionsR;

  PermissionsBuilder? _permissions;
  PermissionsBuilder get permissions =>
      _$this._permissions ??= new PermissionsBuilder();
  set permissions(PermissionsBuilder? permissions) =>
      _$this._permissions = permissions;

  CurrentUserBuilder();

  CurrentUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userName = $v.userName;
      _apiKey = $v.apiKey;
      _isSigned = $v.isSigned;
      _email = $v.email;
      _email2 = $v.email2;
      _phone = $v.phone;
      _userRoles = $v.userRoles?.toBuilder();
      _sectionsP = $v.sectionsP?.toBuilder();
      _sectionsR = $v.sectionsR?.toBuilder();
      _permissions = $v.permissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrentUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrentUser;
  }

  @override
  void update(void Function(CurrentUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CurrentUser build() {
    _$CurrentUser _$result;
    try {
      _$result = _$v ??
          new _$CurrentUser._(
              id: id,
              userName: userName,
              apiKey: apiKey,
              isSigned: isSigned,
              email: email,
              email2: email2,
              phone: phone,
              userRoles: _userRoles?.build(),
              sectionsP: _sectionsP?.build(),
              sectionsR: _sectionsR?.build(),
              permissions: _permissions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userRoles';
        _userRoles?.build();
        _$failedField = 'sectionsP';
        _sectionsP?.build();
        _$failedField = 'sectionsR';
        _sectionsR?.build();
        _$failedField = 'permissions';
        _permissions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CurrentUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
