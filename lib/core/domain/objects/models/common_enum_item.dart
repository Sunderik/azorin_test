import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';

part 'common_enum_item.g.dart';

abstract class CommonEnumItem implements Built<CommonEnumItem, CommonEnumItemBuilder> {
  /// Уникальный идентификатор элемента перечисления.
  String? get guid;

  /// Уникальный идентификатор перечисления внутри приложения.
  int? get appId;

  /// Наименование элемента перечисления.
  String? get name;

  /// Полное наименование элемента перечисления, используемое в приложении.
  String? get fullName;

  /// Описание элемента перечисления.
  String? get description;

  /// Цвет элемента перечисления (формат HEX).
  String? get color;

  /// Приоритет элемента перечисления.
  int? get priority;

  /// Порядок элемента перечисления.
  int? get order;

  CommonEnumItem._();

  factory CommonEnumItem([void Function(CommonEnumItemBuilder) updates]) = _$CommonEnumItem;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(CommonEnumItem.serializer, this) as Map<String, dynamic>;
  }

  static CommonEnumItem? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CommonEnumItem.serializer, json);
  }

  static Serializer<CommonEnumItem> get serializer => _$commonEnumItemSerializer;
}
