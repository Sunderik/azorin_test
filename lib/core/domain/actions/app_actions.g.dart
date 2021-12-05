// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_actions.dart';

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$AppActions extends AppActions {
  factory _$AppActions() => _$AppActions._();
  _$AppActions._() : super._();

  final clearState = ActionDispatcher<void>('AppActions-clearState');
  final setTheme = ActionDispatcher<void>('AppActions-setTheme');

  final navigation = NavigationActions();
  final users = UsersActions();
  final usersScreen = UsersListScreenActions();
  @override
  void setDispatcher(Dispatcher dispatcher) {
    clearState.setDispatcher(dispatcher);
    setTheme.setDispatcher(dispatcher);

    navigation.setDispatcher(dispatcher);
    users.setDispatcher(dispatcher);
    usersScreen.setDispatcher(dispatcher);
  }
}

class AppActionsNames {
  static final clearState = ActionName<void>('AppActions-clearState');
  static final setTheme = ActionName<void>('AppActions-setTheme');
}
