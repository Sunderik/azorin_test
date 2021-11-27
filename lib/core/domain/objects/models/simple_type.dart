import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';

part 'simple_type.g.dart';

/// Класс, хранящий поля [guid] и [name]
abstract class SimpleType implements Built<SimpleType, SimpleTypeBuilder> {
  /// Уникальный идентификатор объекта
  String? get guid;

  /// Наименование объекта
  String? get name;

  SimpleType._();
  factory SimpleType([void Function(SimpleTypeBuilder) updates]) = _$SimpleType;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(SimpleType.serializer, this) as Map<String, dynamic>;
  }

  static SimpleType? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(SimpleType.serializer, json);
  }

  static Serializer<SimpleType> get serializer => _$simpleTypeSerializer;
}
