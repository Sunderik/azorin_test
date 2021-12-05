// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_actions.dart';

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$UsersActions extends UsersActions {
  factory _$UsersActions() => _$UsersActions._();
  _$UsersActions._() : super._();

  final setUsers = ActionDispatcher<BuiltList<User>>('UsersActions-setUsers');
  final clear = ActionDispatcher<void>('UsersActions-clear');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    setUsers.setDispatcher(dispatcher);
    clear.setDispatcher(dispatcher);
  }
}

class UsersActionsNames {
  static final setUsers = ActionName<BuiltList<User>>('UsersActions-setUsers');
  static final clear = ActionName<void>('UsersActions-clear');
}
