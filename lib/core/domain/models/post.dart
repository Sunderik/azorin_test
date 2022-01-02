import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:azorin_test/core/domain/serializers/serializers.dart';

part 'post.g.dart';

///
abstract class Post implements Built<Post, PostBuilder> {
  ///
  int? get id;

  ///
  int? get userId;

  ///
  String? get title;

  ///
  String? get body;

  Post._();
  ///
  factory Post([void Function(PostBuilder) updates]) = _$Post;
  ///
  Map<String, dynamic>? toJson() {
    return mainSerializers.serializeWith(Post.serializer, this) as Map<String, dynamic>;
  }
  ///
  static Post? fromJson(Map<String, dynamic> json) {
    return mainSerializers.deserializeWith(Post.serializer, json);
  }
  ///
  static Serializer<Post> get serializer => _$postSerializer;
}
