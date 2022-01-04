 import 'package:azorin_test/core/core.dart';
import 'package:built_value/built_value.dart';

part 'albums_list_state.g.dart';
///
abstract class AlbumsListScreenState implements Built<AlbumsListScreenState, AlbumsListScreenStateBuilder> {
  /// Статус экрана.
  ScreenStatusEnum? get albumsListScreenStatus;

  AlbumsListScreenState._();

  factory AlbumsListScreenState([void Function(AlbumsListScreenStateBuilder) updates]) = _$AlbumsListScreenState;
}
