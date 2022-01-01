import 'dart:async';

import 'package:azorin_test/core/bloc/base_bloc.dart';
import 'package:azorin_test/core/core.dart';

class UserDetailsBloc extends BaseBloc {
  UserDetailsBloc(this.userId);

  final int userId;

  User? user;

  /// Стрим данных контроллера [_userDetailsController].
  Stream<ScreenStatusEnum?>? get userDetailsScreenStatusStream => _userDetailsScreenStatusController?.stream;

  /// Стрим данных контроллера [_userDetailsController].

  Stream<String>? get appBarNameStream => _appBarNameController?.stream;

  // endregion

  // region Private Fields
  /// Контроллер статуса экрана.
  late StreamController<ScreenStatusEnum?>? _userDetailsScreenStatusController;

  /// Подписка на значения поля [UserDetailsState.screenStatus].
  late StreamSubscription<ScreenStatusEnum?>? _userDetailsScreenStatusSubscription;

  /// Контроллер статуса экрана.
  late StreamController<String>? _appBarNameController;

  /// Возвращает информацию об исполнителе (сотруднике).
  User? getUserDetails() {
    return user;
  }

  /// Очищает информацию о сотруднике.
  void clearUserDetails() {
    actions.userScreen.clearUserDetails(null);
  }

  // endregion

  @override
  void init() {
    super.init();
    _userDetailsScreenStatusSubscription = store
        ?.nextSubstate((AppState state) => state.userDetailsState.screenStatus)
        .listen((ScreenStatusEnum? screenStatus) {
      if (screenStatus != null) {
        _userDetailsScreenStatusController?.sink.add(screenStatus);
      }
    });
    _userDetailsScreenStatusController = StreamController<ScreenStatusEnum>.broadcast();
    _appBarNameController = StreamController<String>.broadcast();
  }

  void loadUserInfo() {
    user = store!.state.usersState.users.firstWhere((_user) => _user.id == userId);
    if (user != null) {
      _userDetailsScreenStatusController?.sink.add(ScreenStatusEnum.wait);
      Future.delayed(const Duration(microseconds: 1)) //для разделения инциализирующего потока (чтоб инит не перекрывал)
          .then((value) => {_appBarNameController?.sink.add(user!.userName!)});
    } else {
      _userDetailsScreenStatusController?.sink.add(ScreenStatusEnum.loading);
    }
  }

  @override
  void dispose() {
    _userDetailsScreenStatusController?.close();
    _userDetailsScreenStatusSubscription?.cancel();
    _appBarNameController?.close();
    super.dispose();
  }
}
