import 'package:azorin_test/features/navigation/data/dialogs.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dialog_bundle.g.dart';

abstract class AlertDialogBundle implements Built<AlertDialogBundle, AlertDialogBundleBuilder> {
  AlertDialogBundle._();

  factory AlertDialogBundle([void Function(AlertDialogBundleBuilder)? updates]) {
    return _$AlertDialogBundle((b) => b
      ..dialogType = DialogType.alert
      ..update(updates));
  }

  DialogType? get dialogType;

  String? get buttonText;

  String? get title;

  String? get message;

  static Serializer<AlertDialogBundle> get serializer => _$alertDialogBundleSerializer;
}
