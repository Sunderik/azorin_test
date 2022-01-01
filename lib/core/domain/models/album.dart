import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:azorin_test/core/domain/serializers/serializers.dart';

part 'album.g.dart';

///
abstract class Album implements Built<Album, AlbumBuilder> {
  ///
  int? get id;

  ///
  int? get userId;

  ///
  String? get title;

  Album._();

  factory Album([void Function(AlbumBuilder) updates]) = _$Album;

  Map<String, dynamic>? toJson() {
    return mainSerializers.serializeWith(Album.serializer, this) as Map<String, dynamic>;
  }

  static Album? fromJson(Map<String, dynamic> json) {
    return mainSerializers.deserializeWith(Album.serializer, json);
  }

  static Serializer<Album> get serializer => _$albumSerializer;
}