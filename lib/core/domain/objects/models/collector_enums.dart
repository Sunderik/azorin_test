import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models.dart';

part 'collector_enums.g.dart';

abstract class CollectorEnums implements Built<CollectorEnums, CollectorEnumsBuilder> {
  /// Хеш-код справочника.
  String? get directoryHashCode;

  /// Справочник перечислений.
  BuiltList<CommonEnum>? get directory;

  CollectorEnums._();

  factory CollectorEnums([void Function(CollectorEnumsBuilder) updates]) = _$CollectorEnums;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(CollectorEnums.serializer, this) as Map<String, dynamic>;
  }

  static CollectorEnums? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(CollectorEnums.serializer, json);
  }

  static Serializer<CollectorEnums> get serializer => _$collectorEnumsSerializer;
}
