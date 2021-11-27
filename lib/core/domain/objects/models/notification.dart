import 'package:built_value/built_value.dart';
import 'package:tecon_task/core/domain/objects/models/notification_data.dart';

part 'notification.g.dart';

abstract class Notification implements Built<Notification, NotificationBuilder> {
  ///
  String? get notificationTitle;

  ///
  String? get notificationBody;

  ///
  String? get imageUrl;

  /// The ID of the upstream sender location.
  String? get senderId;

  /// The iOS category this notification is assigned to.
  String? get category;

  /// The collapse key a message was sent with. Used to override existing messages with the same key.
  String? get collapseKey;

  /// The topic name or message identifier.
  String? get from;

  /// A unique ID assigned to every message.
  String? get messageId;

  /// The message type of the message.
  String? get messageType;

  /// An iOS app specific identifier used for notification grouping.
  String? get threadId;

  NotificationData? get data;

  Notification._();

  factory Notification([void Function(NotificationBuilder) updates]) = _$Notification;
}
