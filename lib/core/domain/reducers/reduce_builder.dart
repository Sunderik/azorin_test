import 'package:azorin_test/features/albums_list_screen/domain/albums_list_reducer.dart';
import 'package:azorin_test/features/posts_list_screen/domain/posts_list_reducer.dart';
import 'package:azorin_test/features/user_details_screen/domain/domain.dart';
import 'package:built_redux/built_redux.dart';

import '../domain.dart';
///
final reducerBuilder = ReducerBuilder<AppState, AppStateBuilder>()
  ..combineNested(createAppStateReducer())
  ..combineNested(createUsersReducer())
  ..combineNested(createUserDetailsReducer())
  ..combineNested(createPostsListReducer())
  ..combineNested(createAlbumsListReducer());
///
final reducers = reducerBuilder.build();
