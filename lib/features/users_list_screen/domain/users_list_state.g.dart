// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_list_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsersListScreenState extends UsersListScreenState {
  @override
  final ScreenStatusEnum? usersListScreenStatus;

  factory _$UsersListScreenState(
          [void Function(UsersListScreenStateBuilder)? updates]) =>
      (new UsersListScreenStateBuilder()..update(updates)).build();

  _$UsersListScreenState._({this.usersListScreenStatus}) : super._();

  @override
  UsersListScreenState rebuild(
          void Function(UsersListScreenStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersListScreenStateBuilder toBuilder() =>
      new UsersListScreenStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersListScreenState &&
        usersListScreenStatus == other.usersListScreenStatus;
  }

  @override
  int get hashCode {
    return $jf($jc(0, usersListScreenStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersListScreenState')
          ..add('usersListScreenStatus', usersListScreenStatus))
        .toString();
  }
}

class UsersListScreenStateBuilder
    implements Builder<UsersListScreenState, UsersListScreenStateBuilder> {
  _$UsersListScreenState? _$v;

  ScreenStatusEnum? _usersListScreenStatus;
  ScreenStatusEnum? get usersListScreenStatus => _$this._usersListScreenStatus;
  set usersListScreenStatus(ScreenStatusEnum? usersListScreenStatus) =>
      _$this._usersListScreenStatus = usersListScreenStatus;

  UsersListScreenStateBuilder();

  UsersListScreenStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usersListScreenStatus = $v.usersListScreenStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersListScreenState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersListScreenState;
  }

  @override
  void update(void Function(UsersListScreenStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersListScreenState build() {
    final _$result = _$v ??
        new _$UsersListScreenState._(
            usersListScreenStatus: usersListScreenStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
