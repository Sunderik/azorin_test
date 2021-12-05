// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersResponse> _$usersResponseSerializer =
    new _$UsersResponseSerializer();

class _$UsersResponseSerializer implements StructuredSerializer<UsersResponse> {
  @override
  final Iterable<Type> types = const [UsersResponse, _$UsersResponse];
  @override
  final String wireName = 'UsersResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(User)])));
    }
    value = object.httpCode;
    if (value != null) {
      result
        ..add('httpCode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UsersResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'users':
          result.users.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(User)]))!
              as BuiltList<Object>);
          break;
        case 'httpCode':
          result.httpCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersResponse extends UsersResponse {
  @override
  final BuiltList<User>? users;
  @override
  final int? httpCode;
  @override
  final String? message;

  factory _$UsersResponse([void Function(UsersResponseBuilder)? updates]) =>
      (new UsersResponseBuilder()..update(updates)).build();

  _$UsersResponse._({this.users, this.httpCode, this.message}) : super._();

  @override
  UsersResponse rebuild(void Function(UsersResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersResponseBuilder toBuilder() => new UsersResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersResponse &&
        users == other.users &&
        httpCode == other.httpCode &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, users.hashCode), httpCode.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersResponse')
          ..add('users', users)
          ..add('httpCode', httpCode)
          ..add('message', message))
        .toString();
  }
}

class UsersResponseBuilder
    implements Builder<UsersResponse, UsersResponseBuilder>, BaseModelBuilder {
  _$UsersResponse? _$v;

  ListBuilder<User>? _users;
  ListBuilder<User> get users => _$this._users ??= new ListBuilder<User>();
  set users(covariant ListBuilder<User>? users) => _$this._users = users;

  int? _httpCode;
  int? get httpCode => _$this._httpCode;
  set httpCode(covariant int? httpCode) => _$this._httpCode = httpCode;

  String? _message;
  String? get message => _$this._message;
  set message(covariant String? message) => _$this._message = message;

  UsersResponseBuilder();

  UsersResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users?.toBuilder();
      _httpCode = $v.httpCode;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant UsersResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersResponse;
  }

  @override
  void update(void Function(UsersResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersResponse build() {
    _$UsersResponse _$result;
    try {
      _$result = _$v ??
          new _$UsersResponse._(
              users: _users?.build(), httpCode: httpCode, message: message);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UsersResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
