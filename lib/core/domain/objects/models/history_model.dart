import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models/attached_file.dart';

part 'history_model.g.dart';

abstract class HistoryModel
    implements Built<HistoryModel, HistoryModelBuilder> {
  String? get guid; // Уникальный идентификатор объекта

  String? get comment; // Комментарий пользователя

  String
      get autoComment; // Комментарий, сгенерированный по шаблону "Дата Время Фамилия Инициалы Описание"

  BuiltList<String>? get images; // Идентификаторы прикрепленных изображений

  BuiltList<AttachedFile>? get files; // Прикрепленные файлы

  HistoryModel._();
  factory HistoryModel([void Function(HistoryModelBuilder) updates]) =
      _$HistoryModel;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(HistoryModel.serializer, this)
        as Map<String, dynamic>;
  }

  static HistoryModel? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(HistoryModel.serializer, json);
  }

  static Serializer<HistoryModel> get serializer => _$historyModelSerializer;
}
