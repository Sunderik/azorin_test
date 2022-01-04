import 'package:built_redux/built_redux.dart';
import 'package:flutter/material.dart';

import 'core/domain/actions/app_actions.dart';
import 'core/domain/domain.dart';
import 'core/domain/middlewares/middelware_builder.dart';
import 'core/services/cache_data_sevice.dart';
import 'injection.dart';

///
Store<AppState, AppStateBuilder, AppActions>? _store;

///
Store<AppState, AppStateBuilder, AppActions>? get store => _store;

///
startApp() async {
  AppState? _data = await injector.get<CacheDataService>().getData();

  _store = Store(
    reducers,
    _data ?? AppState(),
    AppActions(),
    middleware: middlewares,
  );
}
