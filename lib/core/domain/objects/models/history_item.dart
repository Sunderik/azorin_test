import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models.dart';

part 'history_item.g.dart';

abstract class HistoryItem implements Built<HistoryItem, HistoryItemBuilder> {
  String? get date; // Дата и время

  Author? get author; // Автор

  String? get action; // Действие автора

  String? get comment; // Комментарий, оставленный пользователем

  BuiltList<String>? get images; // Идентефикаторы прикрепленных изображений

  BuiltList<AttachedFile>? get files; // Прикреплённые файлы

  SimpleType? get object; // Уникальный идентификатор задачи/проблемы и Наименование задачи/проблемы

  String? get status; // Статус задачи/проблемы

  String? get type; // Тип задачи/проблемы

  SimpleType? get material; // Материал задачи

  String? get reason; // Причина

  HistoryItem._();

  factory HistoryItem([void Function(HistoryItemBuilder) updates]) = _$HistoryItem;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(HistoryItem.serializer, this) as Map<String, dynamic>;
  }

  static HistoryItem? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(HistoryItem.serializer, json);
  }

  static Serializer<HistoryItem> get serializer => _$historyItemSerializer;
}
