import 'package:built_redux/built_redux.dart';
import 'package:flutter/material.dart';

import 'core/domain/actions/app_actions.dart';
import 'core/domain/domain.dart';
import 'core/domain/middlewares/middelware_builder.dart';

Store<AppState, AppStateBuilder, AppActions>? _store;
Store<AppState, AppStateBuilder, AppActions>? get store => _store;

startApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  _store = Store(
    reducers,
    AppState(),
    AppActions(),
    middleware: middlewares,
  );
}
