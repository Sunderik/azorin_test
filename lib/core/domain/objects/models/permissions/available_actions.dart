import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';

part 'available_actions.g.dart';

abstract class AvailableActions implements Built<AvailableActions, AvailableActionsBuilder> {
  /// Просмотр
  bool? get canSee;

  /// Создание
  bool? get canCreate;

  /// Комментирование
  bool? get canComment;

  /// Прикрепление фото
  bool? get canAttachPhoto;

  /// Взятие в работу
  bool? get canTakeInWork;

  /// Возврат в работу
  bool? get canReturnInWork;

  /// Перевод в обратную связь
  bool? get canFeedback;

  /// Завершение
  bool? get canComplete;

  /// Отмена
  bool? get canCancel;

  /// Остановка
  bool? get canSuspend;

  /// Смена типа
  bool? get canChangeType;

  /// Выход на смену
  bool? get canGoToWork;

  /// Выпуск на смену
  bool? get canReleaseToWork;

  /// Указание причины отсутствия
  bool? get canSetReasonForAbsence;

  AvailableActions._();
  factory AvailableActions([void Function(AvailableActionsBuilder) updates]) = _$AvailableActions;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(AvailableActions.serializer, this) as Map<String, dynamic>;
  }

  static AvailableActions? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(AvailableActions.serializer, json);
  }

  static Serializer<AvailableActions> get serializer => _$availableActionsSerializer;
}
