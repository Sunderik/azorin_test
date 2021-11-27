import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models.dart';

part 'chat_list_item.g.dart';

abstract class ChatListItem implements Built<ChatListItem, ChatListItemBuilder> {
  /// Guid проблемы и Наименование проблемы
  SimpleType? get object;

  /// Guid проекта, которому принадлежит проблема
  String? get projectGuid;

  /// Guid типа проблемы
  String? get type;

  /// Наименование группы предприятий
  String? get group;

  /// Guid статуса чата
  String? get status;

  /// Количество сообщений
  num? get countMessages;

  /// Список пар ключ-значение, где [key] - guid пользователя, имеющего доступ к этому чату,
  /// [value] - количество сообщений, прочитанных им
  BuiltMap<String, num>? get users;

  ChatListItem._();

  factory ChatListItem([void Function(ChatListItemBuilder) updates]) = _$ChatListItem;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(ChatListItem.serializer, this) as Map<String, dynamic>;
  }

  static ChatListItem? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ChatListItem.serializer, json);
  }

  static Serializer<ChatListItem> get serializer => _$chatListItemSerializer;
}
