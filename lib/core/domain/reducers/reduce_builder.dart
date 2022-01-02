import 'package:azorin_test/features/user_details/domain/domain.dart';
import 'package:built_redux/built_redux.dart';

import '../domain.dart';
///
final reducerBuilder = ReducerBuilder<AppState, AppStateBuilder>()
  ..combineNested(createAppStateReducer())
  ..combineNested(createUsersReducer())
  ..combineNested(createUserDetailsReducer());
///
final reducers = reducerBuilder.build();
