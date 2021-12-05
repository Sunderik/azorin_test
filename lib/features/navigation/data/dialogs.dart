import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dialogs.g.dart';

class DialogType extends EnumClass {
  static const DialogType alert = _$alert;

  const DialogType._(String name) : super(name);

  static BuiltSet<DialogType> get values => _$dialogTypeValues;
  static DialogType valueOf(String name) => _$dialogTypeValueOf(name);
}
