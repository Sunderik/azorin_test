import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/core/domain/objects/models/notification_data.dart';
import 'package:tecon_task/core/network/models/not_sent_request_model.dart';

part 'network_serializers.g.dart';

@SerializersFor([NotSentRequestModel, NotificationData])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(DateTimeSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();
