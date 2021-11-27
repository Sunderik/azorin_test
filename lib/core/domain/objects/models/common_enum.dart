import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models.dart';

part 'common_enum.g.dart';

abstract class CommonEnum implements Built<CommonEnum, CommonEnumBuilder> {
  /// Уникальный идентфикатор перечисления.
  String? get guid;

  /// Наименование перечисления.
  String? get name;

  /// Список элементов перечисления.
  BuiltList<CommonEnumItem>? get elements;

  CommonEnum._();

  /// Получить элемент [CommonEnumItem] по его [guid]
  CommonEnumItem? getCommonEnumItemByGuid(String? guid) {
    return elements?.firstWhereOrNull((e) => e.guid == guid);
  }

  /// Получить элемент [CommonEnumItem] по его [appId]
  CommonEnumItem? getCommonEnumItemByAppId(int appId) {
    return elements?.firstWhereOrNull((e) => e.appId == appId);
  }

  factory CommonEnum([void Function(CommonEnumBuilder) updates]) = _$CommonEnum;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(CommonEnum.serializer, this) as Map<String, dynamic>;
  }

  static CommonEnum? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CommonEnum.serializer, json);
  }

  static Serializer<CommonEnum> get serializer => _$commonEnumSerializer;
}
