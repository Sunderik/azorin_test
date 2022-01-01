import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/features/user_details/repository/models/models.dart';

part 'serializers.g.dart';

@SerializersFor([UserLastsPostsRequest, UserLastsPostsResponse, UserLastsAlbumsRequest, UserLastsAlbumsResponse])
final Serializers serializers = (_$serializers.toBuilder()
      ..add(DateTimeSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();
