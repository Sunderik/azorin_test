import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/network/models/network_serializers.dart';

part 'not_sent_request_model.g.dart';

///Класс неотправленных запросов по причине отсутствия интернета или недоступности сервера
abstract class NotSentRequestModel implements Built<NotSentRequestModel, NotSentRequestModelBuilder> {
  String? get timeSending; //Время попытки отправки запроса

  String? get description; //Описание запроса

  String? get url; //адрес отправки запроса

  String? get request; //обчного запроса

  BuiltMap<String, String>? get requestFields; //тело multipart запроса

  String? get filePath; //путь по которому храниться файл для выгрузки

  BuiltMap<String, String>? get headers; //заголовки используемые в запросе

  NotSentRequestModel._();

  factory NotSentRequestModel([void Function(NotSentRequestModelBuilder) updates]) = _$NotSentRequestModel;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(NotSentRequestModel.serializer, this) as Map<String, dynamic>;
  }

  NotSentRequestModel? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(NotSentRequestModel.serializer, json);
  }

  static Serializer<NotSentRequestModel> get serializer => _$notSentRequestModelSerializer;
}
