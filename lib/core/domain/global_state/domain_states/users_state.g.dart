// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersState> _$usersStateSerializer = new _$UsersStateSerializer();

class _$UsersStateSerializer implements StructuredSerializer<UsersState> {
  @override
  final Iterable<Type> types = const [UsersState, _$UsersState];
  @override
  final String wireName = 'UsersState';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'users',
      serializers.serialize(object.users,
          specifiedType:
              const FullType(BuiltList, const [const FullType(User)])),
    ];

    return result;
  }

  @override
  UsersState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersStateBuilder();

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
      }
    }

    return result.build();
  }
}

class _$UsersState extends UsersState {
  @override
  final BuiltList<User> users;

  factory _$UsersState([void Function(UsersStateBuilder)? updates]) =>
      (new UsersStateBuilder()..update(updates)).build();

  _$UsersState._({required this.users}) : super._() {
    BuiltValueNullFieldError.checkNotNull(users, 'UsersState', 'users');
  }

  @override
  UsersState rebuild(void Function(UsersStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersStateBuilder toBuilder() => new UsersStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersState && users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc(0, users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersState')..add('users', users))
        .toString();
  }
}

class UsersStateBuilder implements Builder<UsersState, UsersStateBuilder> {
  _$UsersState? _$v;

  ListBuilder<User>? _users;
  ListBuilder<User> get users => _$this._users ??= new ListBuilder<User>();
  set users(ListBuilder<User>? users) => _$this._users = users;

  UsersStateBuilder();

  UsersStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersState;
  }

  @override
  void update(void Function(UsersStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersState build() {
    _$UsersState _$result;
    try {
      _$result = _$v ?? new _$UsersState._(users: users.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UsersState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
