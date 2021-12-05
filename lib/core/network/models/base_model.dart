library base_model;

import 'package:built_value/built_value.dart';

part 'base_model.g.dart';

@BuiltValue(instantiable: false)
abstract class BaseModel {
  @BuiltValueField(wireName: 'httpCode')
  int? get httpCode;
  @BuiltValueField(wireName: 'message')
  String? get message;
}
