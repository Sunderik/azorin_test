import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'chat_status_enum.g.dart';

/// Перечисление со статусами чата.
class ChatStatusEnum extends EnumClass {
  /// Статус чата - "Завершен".
  static const ChatStatusEnum completed = _$completed;

  /// Статус чата - "Открытый".
  static const ChatStatusEnum opened = _$opened;

  /// Статус чата - "Закрытый".
  static const ChatStatusEnum closed = _$closed;

  int get appId => _appId[this] ?? (throw StateError('No appId for ChatStatusEnum.$name'));

  static const _appId = const {
    opened: 0,
    closed: 1,
    completed: 2,
  };

  const ChatStatusEnum._(String name) : super(name);

  static BuiltSet<ChatStatusEnum> get values => _$chatStatusEnumValues;
  static ChatStatusEnum valueOf(String name) => _$chatStatusEnumValueOf(name);
}
