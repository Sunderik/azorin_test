import 'package:azorin_test/core/domain/models/post.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:azorin_test/core/domain/serializers/serializers.dart';

import 'models.dart';

part 'user.g.dart';

///
abstract class User implements Built<User, UserBuilder> {
  ///
  int? get id;

  ///
  String? get name;

  ///
  @BuiltValueField(wireName: 'username')
  String? get userName;

  ///
  String? get email;

  ///
  Address? get address;

  ///
  Company get company;

  ///
  String? get phone;

  ///
  String? get website;

  ///
  BuiltList<Post>? get posts;

  User._();

  factory User([void Function(UserBuilder) updates]) = _$User;

  Map<String, dynamic>? toJson() {
    return mainSerializers.serializeWith(User.serializer, this) as Map<String, dynamic>;
  }

  static User? fromJson(Map<String, dynamic> json) {
    return mainSerializers.deserializeWith(User.serializer, json);
  }

  static Serializer<User> get serializer => _$userSerializer;
}
