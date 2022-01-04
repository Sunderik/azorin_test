 import 'package:azorin_test/core/core.dart';
import 'package:built_value/built_value.dart';

part 'posts_list_state.g.dart';
///
abstract class PostsListScreenState implements Built<PostsListScreenState, PostsListScreenStateBuilder> {
  /// Статус экрана.
  ScreenStatusEnum? get postsListScreenStatus;

  PostsListScreenState._();

  factory PostsListScreenState([void Function(PostsListScreenStateBuilder) updates]) = _$PostsListScreenState;
}
