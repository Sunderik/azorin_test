// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'position_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PositionItemTearOff {
  const _$PositionItemTearOff();

  _PositionItem call(
      {PositionTypeEnum? type,
      Coordinates? coordinates,
      String? displayValue}) {
    return _PositionItem(
      type: type,
      coordinates: coordinates,
      displayValue: displayValue,
    );
  }
}

/// @nodoc
const $PositionItem = _$PositionItemTearOff();

/// @nodoc
mixin _$PositionItem {
  /// Тип ответа геолокатора
  PositionTypeEnum? get type => throw _privateConstructorUsedError;

  /// Полученные координаты
  Coordinates? get coordinates => throw _privateConstructorUsedError;

  /// Ответ геолокатора
  String? get displayValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PositionItemCopyWith<PositionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionItemCopyWith<$Res> {
  factory $PositionItemCopyWith(
          PositionItem value, $Res Function(PositionItem) then) =
      _$PositionItemCopyWithImpl<$Res>;
  $Res call(
      {PositionTypeEnum? type, Coordinates? coordinates, String? displayValue});
}

/// @nodoc
class _$PositionItemCopyWithImpl<$Res> implements $PositionItemCopyWith<$Res> {
  _$PositionItemCopyWithImpl(this._value, this._then);

  final PositionItem _value;
  // ignore: unused_field
  final $Res Function(PositionItem) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
    Object? displayValue = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PositionTypeEnum?,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      displayValue: displayValue == freezed
          ? _value.displayValue
          : displayValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PositionItemCopyWith<$Res>
    implements $PositionItemCopyWith<$Res> {
  factory _$PositionItemCopyWith(
          _PositionItem value, $Res Function(_PositionItem) then) =
      __$PositionItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {PositionTypeEnum? type, Coordinates? coordinates, String? displayValue});
}

/// @nodoc
class __$PositionItemCopyWithImpl<$Res> extends _$PositionItemCopyWithImpl<$Res>
    implements _$PositionItemCopyWith<$Res> {
  __$PositionItemCopyWithImpl(
      _PositionItem _value, $Res Function(_PositionItem) _then)
      : super(_value, (v) => _then(v as _PositionItem));

  @override
  _PositionItem get _value => super._value as _PositionItem;

  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
    Object? displayValue = freezed,
  }) {
    return _then(_PositionItem(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PositionTypeEnum?,
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      displayValue: displayValue == freezed
          ? _value.displayValue
          : displayValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PositionItem implements _PositionItem {
  const _$_PositionItem({this.type, this.coordinates, this.displayValue});

  @override

  /// Тип ответа геолокатора
  final PositionTypeEnum? type;
  @override

  /// Полученные координаты
  final Coordinates? coordinates;
  @override

  /// Ответ геолокатора
  final String? displayValue;

  @override
  String toString() {
    return 'PositionItem(type: $type, coordinates: $coordinates, displayValue: $displayValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PositionItem &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.coordinates, coordinates) ||
                const DeepCollectionEquality()
                    .equals(other.coordinates, coordinates)) &&
            (identical(other.displayValue, displayValue) ||
                const DeepCollectionEquality()
                    .equals(other.displayValue, displayValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(coordinates) ^
      const DeepCollectionEquality().hash(displayValue);

  @JsonKey(ignore: true)
  @override
  _$PositionItemCopyWith<_PositionItem> get copyWith =>
      __$PositionItemCopyWithImpl<_PositionItem>(this, _$identity);
}

abstract class _PositionItem implements PositionItem {
  const factory _PositionItem(
      {PositionTypeEnum? type,
      Coordinates? coordinates,
      String? displayValue}) = _$_PositionItem;

  @override

  /// Тип ответа геолокатора
  PositionTypeEnum? get type => throw _privateConstructorUsedError;
  @override

  /// Полученные координаты
  Coordinates? get coordinates => throw _privateConstructorUsedError;
  @override

  /// Ответ геолокатора
  String? get displayValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PositionItemCopyWith<_PositionItem> get copyWith =>
      throw _privateConstructorUsedError;
}
