import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'screen_status_enum.g.dart';

/// Перечисление состояний экрана
class ScreenStatusEnum extends EnumClass {
  /// Статус: инициализация
  static const ScreenStatusEnum init = _$init;

  /// Статус: ожидание действий пользователя
  static const ScreenStatusEnum wait = _$wait;

  /// Статус: загрузка
  static const ScreenStatusEnum loading = _$loading;

  /// Статус: ошибка
  static const ScreenStatusEnum fail = _$fail;

  const ScreenStatusEnum._(String name) : super(name);

  ///
  static BuiltSet<ScreenStatusEnum> get values => _$screenStatusEnumValues;

  ///
  static ScreenStatusEnum valueOf(String name) => _$screenStatusEnumValueOf(name);
}
