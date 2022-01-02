import 'package:azorin_test/core/di/provider/store_provider.dart';
import 'package:azorin_test/injection.dart';
import 'package:built_redux/built_redux.dart';

import '../domain/domain.dart';

///
abstract class BaseBloc {
  ///
  final StoreProvider _storeProvider = injector.get<StoreProvider>();

  ///
  Store<AppState, AppStateBuilder, AppActions>? get store => _storeProvider.store;

  ///
  AppActions get actions => store!.actions;

  ///
  void init() {}

  ///
  void dispose() {}
}
