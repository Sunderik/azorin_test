// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_actions.dart';

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$UserActions extends UserActions {
  factory _$UserActions() => _$UserActions._();
  _$UserActions._() : super._();

  final setApiKey = ActionDispatcher<String>('UserActions-setApiKey');
  final setCurrentUser =
      ActionDispatcher<CurrentUser>('UserActions-setCurrentUser');
  final changeProjectStatus =
      ActionDispatcher<SimpleType>('UserActions-changeProjectStatus');
  final clear = ActionDispatcher<void>('UserActions-clear');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    setApiKey.setDispatcher(dispatcher);
    setCurrentUser.setDispatcher(dispatcher);
    changeProjectStatus.setDispatcher(dispatcher);
    clear.setDispatcher(dispatcher);
  }
}

class UserActionsNames {
  static final setApiKey = ActionName<String>('UserActions-setApiKey');
  static final setCurrentUser =
      ActionName<CurrentUser>('UserActions-setCurrentUser');
  static final changeProjectStatus =
      ActionName<SimpleType>('UserActions-changeProjectStatus');
  static final clear = ActionName<void>('UserActions-clear');
}
