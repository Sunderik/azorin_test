import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/network/models/network_serializers.dart';

part 'notification_data.g.dart';

abstract class NotificationData
    implements Built<NotificationData, NotificationDataBuilder> {
  /// Инициатор события
  String? get authorName;

  /// Идентификатор проекта в котором произошло событие
  String? get projectGuid;

  /// Имя проекта в котором произошло событие
  String? get projectName;

  /// гуид инстанса
  String? get instanceId;

  /// Описание
  String? get description;

  /// Задача с которой произошло событие
  String? get objectGuid;

  ///
  String? get comment;

  ///
  String? get fileName;

  ///
  String? get oldTypeGuid;

  ///
  String? get newTypeGuid;

  ///
  String? get oldStatusGuid;

  ///
  String? get newStatusGuid;

  /// Индентификатор типа события
  String? get notificationTypeGuid;

  NotificationData._();

  factory NotificationData([void Function(NotificationDataBuilder) updates]) =
      _$NotificationData;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(NotificationData.serializer, this)
        as Map<String, dynamic>;
  }

  static NotificationData? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(NotificationData.serializer, json);
  }

  static Serializer<NotificationData> get serializer =>
      _$notificationDataSerializer;
}
