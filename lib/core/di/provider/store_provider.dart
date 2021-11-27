import 'package:built_redux/built_redux.dart';
import 'package:injectable/injectable.dart';
import 'package:tecon_task/app_starter.dart' as starter;
import 'package:tecon_task/core/domain/domain.dart';

abstract class StoreProvider {
  Store<AppState, AppStateBuilder, AppActions>? get store;
}

@Injectable(as: StoreProvider)
class StoreProviderImpl implements StoreProvider {
  @override
  Store<AppState, AppStateBuilder, AppActions>? get store => starter.store;
}
