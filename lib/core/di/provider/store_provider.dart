import 'package:azorin_test/app_starter.dart' as starter;
import 'package:azorin_test/core/domain/domain.dart';
import 'package:built_redux/built_redux.dart';
import 'package:injectable/injectable.dart';

abstract class StoreProvider {
  Store<AppState, AppStateBuilder, AppActions>? get store;
}

@Injectable(as: StoreProvider)
class StoreProviderImpl implements StoreProvider {
  @override
  Store<AppState, AppStateBuilder, AppActions>? get store => starter.store;
}
