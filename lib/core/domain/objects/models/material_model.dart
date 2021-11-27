import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';

part 'material_model.g.dart';

abstract class MaterialModel implements Built<MaterialModel, MaterialModelBuilder> {
  String? get guid;

  String? get name;

  String? get measuringSystem;

  num? get count;

  num? get countFact;

  String? get materialCategory;

  String? get categoryName;

  MaterialModel._();

  factory MaterialModel([void Function(MaterialModelBuilder) updates]) = _$MaterialModel;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(MaterialModel.serializer, this) as Map<String, dynamic>;
  }

  static MaterialModel? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(MaterialModel.serializer, json);
  }

  static Serializer<MaterialModel> get serializer => _$materialModelSerializer;
}
