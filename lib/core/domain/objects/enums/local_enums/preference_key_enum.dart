import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'preference_key_enum.g.dart';

class PreferenceKeyEnum extends EnumClass {
  /// Ключ для хранения apiKey.
  static const PreferenceKeyEnum apiKey = _$apiKey;

  /// Ключ для хранения необходимости отправки пуш-уведомлений.
  static const PreferenceKeyEnum subscriptionForPush = _$subscriptionForPush;

  /// Ключ для хранения названия стартовой страницы.
  static const PreferenceKeyEnum startingPage = _$startingPage;

  /// Ключ для хранения выбранного проекта.
  static const PreferenceKeyEnum selectedProject = _$selectedProjectGuid;

  /// Ключ для хранения факта, что пользователь прошёл введение.
  static const PreferenceKeyEnum introduction = _$introduction;

  /// Ключ для хранения поля, указывающего отображать ленту бригады в рашсиренном или обычном виде.
  static const PreferenceKeyEnum teamTapeExpandedView = _$teamTapeExpandedView;

  /// Ключ для хранения хеш-кода справочника.
  static const PreferenceKeyEnum directoryHashCode = _$directoryHashCode;

  /// Ключ для хранения значения справочника (для веба).
  static const PreferenceKeyEnum directoryValue = _$directoryValue;

  /// Ключ для хранения оффлайн данных.
  static const PreferenceKeyEnum offlineDataValue = _$offlineDataValue;

  /// Ключ для хранения оффлайн данных.
  static const PreferenceKeyEnum savedRequestsValue = _$savedRequestsValue;

  const PreferenceKeyEnum._(String name) : super(name);

  static BuiltSet<PreferenceKeyEnum> get values => _$preferenceKeyEnumValues;

  static PreferenceKeyEnum valueOf(String name) => _$preferenceKeyEnumValueOf(name);
}
