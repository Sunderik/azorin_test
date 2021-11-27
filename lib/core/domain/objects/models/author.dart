import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';

part 'author.g.dart';

abstract class Author implements Built<Author, AuthorBuilder> {
  /// Уникальный идентификатор сотрудника.
  String? get guid;

  /// Уникальный идентификатор исполнителя.
  String? get executorId;

  /// Имя в формате "Фамилия Имя Отчество".
  String? get fullName;

  // Имя в формате "Фамилия И.О.".
  String? get shortName;

  /// Уникальный идентификатор роли пользователя на проекте.
  String? get roleId;

  Author._();
  factory Author([void Function(AuthorBuilder) updates]) = _$Author;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(Author.serializer, this) as Map<String, dynamic>;
  }

  static Author? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Author.serializer, json);
  }

  static Serializer<Author> get serializer => _$authorSerializer;
}
