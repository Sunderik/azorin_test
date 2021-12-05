// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog_bundle.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlertDialogBundle> _$alertDialogBundleSerializer =
    new _$AlertDialogBundleSerializer();

class _$AlertDialogBundleSerializer
    implements StructuredSerializer<AlertDialogBundle> {
  @override
  final Iterable<Type> types = const [AlertDialogBundle, _$AlertDialogBundle];
  @override
  final String wireName = 'AlertDialogBundle';

  @override
  Iterable<Object?> serialize(Serializers serializers, AlertDialogBundle object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dialogType;
    if (value != null) {
      result
        ..add('dialogType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DialogType)));
    }
    value = object.buttonText;
    if (value != null) {
      result
        ..add('buttonText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AlertDialogBundle deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlertDialogBundleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dialogType':
          result.dialogType = serializers.deserialize(value,
              specifiedType: const FullType(DialogType)) as DialogType;
          break;
        case 'buttonText':
          result.buttonText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AlertDialogBundle extends AlertDialogBundle {
  @override
  final DialogType? dialogType;
  @override
  final String? buttonText;
  @override
  final String? title;
  @override
  final String? message;

  factory _$AlertDialogBundle(
          [void Function(AlertDialogBundleBuilder)? updates]) =>
      (new AlertDialogBundleBuilder()..update(updates)).build();

  _$AlertDialogBundle._(
      {this.dialogType, this.buttonText, this.title, this.message})
      : super._();

  @override
  AlertDialogBundle rebuild(void Function(AlertDialogBundleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlertDialogBundleBuilder toBuilder() =>
      new AlertDialogBundleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlertDialogBundle &&
        dialogType == other.dialogType &&
        buttonText == other.buttonText &&
        title == other.title &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, dialogType.hashCode), buttonText.hashCode),
            title.hashCode),
        message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AlertDialogBundle')
          ..add('dialogType', dialogType)
          ..add('buttonText', buttonText)
          ..add('title', title)
          ..add('message', message))
        .toString();
  }
}

class AlertDialogBundleBuilder
    implements Builder<AlertDialogBundle, AlertDialogBundleBuilder> {
  _$AlertDialogBundle? _$v;

  DialogType? _dialogType;
  DialogType? get dialogType => _$this._dialogType;
  set dialogType(DialogType? dialogType) => _$this._dialogType = dialogType;

  String? _buttonText;
  String? get buttonText => _$this._buttonText;
  set buttonText(String? buttonText) => _$this._buttonText = buttonText;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AlertDialogBundleBuilder();

  AlertDialogBundleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dialogType = $v.dialogType;
      _buttonText = $v.buttonText;
      _title = $v.title;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlertDialogBundle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlertDialogBundle;
  }

  @override
  void update(void Function(AlertDialogBundleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AlertDialogBundle build() {
    final _$result = _$v ??
        new _$AlertDialogBundle._(
            dialogType: dialogType,
            buttonText: buttonText,
            title: title,
            message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
