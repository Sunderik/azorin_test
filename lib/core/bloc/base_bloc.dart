import 'package:built_redux/built_redux.dart';
import 'package:tecon_task/core/di/provider/store_provider.dart';
import 'package:tecon_task/core/domain/domain.dart';
import 'package:tecon_task/injection.dart';

abstract class BaseBloc {
  final StoreProvider _storeProvider = injector.get<StoreProvider>();

  // final LocalizationProvider _localizationProvider = di.singleton<LocalizationProvider>();
  // AppLocalizations get localization => _localizationProvider.localization;
  Store<AppState, AppStateBuilder, AppActions>? get store =>
      _storeProvider.store;

  AppActions get actions => store!.actions;

  void init() {}

  void dispose() {}
}
