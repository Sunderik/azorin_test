// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_list_actions.dart';

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$UsersListScreenActions extends UsersListScreenActions {
  factory _$UsersListScreenActions() => _$UsersListScreenActions._();
  _$UsersListScreenActions._() : super._();

  final usersRequest =
      ActionDispatcher<void>('UsersListScreenActions-usersRequest');
  final setUsersResponse = ActionDispatcher<UsersResponse>(
      'UsersListScreenActions-setUsersResponse');
  final setUsersListScreenStatus = ActionDispatcher<ScreenStatusEnum>(
      'UsersListScreenActions-setUsersListScreenStatus');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    usersRequest.setDispatcher(dispatcher);
    setUsersResponse.setDispatcher(dispatcher);
    setUsersListScreenStatus.setDispatcher(dispatcher);
  }
}

class UsersListScreenActionsNames {
  static final usersRequest =
      ActionName<void>('UsersListScreenActions-usersRequest');
  static final setUsersResponse =
      ActionName<UsersResponse>('UsersListScreenActions-setUsersResponse');
  static final setUsersListScreenStatus = ActionName<ScreenStatusEnum>(
      'UsersListScreenActions-setUsersListScreenStatus');
}
