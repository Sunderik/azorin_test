import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models.dart';

part 'cad_category.g.dart';

abstract class CadCategory implements Built<CadCategory, CadCategoryBuilder> {
  /// Уникальный идентификатор категории.
  String? get guid;

  /// Название категории.
  String? get name;

  /// Указывает имеет ли поле с количеством.
  bool? get isQuantitative;

  /// Список объектов в категории.
  BuiltList<SimpleType>? get cadMaterials;

  CadCategory._();
  factory CadCategory([void Function(CadCategoryBuilder) updates]) = _$CadCategory;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(CadCategory.serializer, this) as Map<String, dynamic>;
  }

  static CadCategory? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CadCategory.serializer, json);
  }

  static Serializer<CadCategory> get serializer => _$cadCategorySerializer;
}
