import 'package:azorin_test/core/core.dart';

import 'package:azorin_test/features/navigation/navigation.dart';
import 'package:azorin_test/features/users_list_screen/domain/middlewares/epics/users_list_epic.dart';
import 'package:azorin_test/features/users_list_screen/domain/middlewares/users_list_middleware.dart';
import 'package:azorin_test/injection.dart';
import 'package:built_redux/built_redux.dart';

final _usersListEpic = injector.get<UsersListEpic>();

final List<
    void Function(Action<dynamic>) Function(void Function(Action<dynamic>)) Function(
        MiddlewareApi<AppState, AppStateBuilder, AppActions>)> middlewares = [
  navigationMiddleware().build(),
  usersListMiddleware().build(),
  createEpicMiddleware([
    _usersListEpic.usersListEpic,
  ])
];
