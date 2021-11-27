import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models.dart';

part 'message.g.dart';

abstract class Message implements Built<Message, MessageBuilder> {
  /// Текст сообщения
  String? get message;

  /// Идентефикаторы прикрепленных изображений
  BuiltList<String>? get images;

  /// Прикреплённые файлы
  BuiltList<AttachedFile>? get files;

  /// Дата и время
  DateTime? get date;

  /// Автор сообщения
  Author? get author;

  Message._();

  factory Message([void Function(MessageBuilder) updates]) = _$Message;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(Message.serializer, this) as Map<String, dynamic>;
  }

  static Message? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Message.serializer, json);
  }

  static Serializer<Message> get serializer => _$messageSerializer;
}
