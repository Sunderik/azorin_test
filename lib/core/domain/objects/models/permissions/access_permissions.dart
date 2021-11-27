import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';

part 'access_permissions.g.dart';

/// Объект доступов к окнам и разделам приложения.
abstract class AccessPermissions implements Built<AccessPermissions, AccessPermissionsBuilder> {
  /// Меню.
  bool? get mainMenuPage;

  /// Окно проектов.
  bool? get projectsPage;

  /// Окно проблем.
  bool? get problemsPage;

  /// Окно задач.
  bool? get tasksPage;

  /// "Задачи в работе" в окне задач.
  bool? get inWorkTasksAtTasksPage;

  /// "Новые задачи" в окне задач.
  bool? get newTasksAtTasksPage;

  /// "Закрытые задачи" в окне задач.
  bool? get closedTasksAtTasksPage;

  /// "Календарь" в окне задач.
  bool? get calendarAtTasksPage;

  /// "Мои задачи" в окне задач.
  bool? get myTasksAtTasksPage;

  /// "Все задачи" в окне задач.
  bool? get allTasksAtTasksPage;

  /// "Поиск" в окне задач.
  bool? get searchAtTasksPage;

  /// Окно команды проекта.
  bool? get teamPage;

  /// Окно информации о сотруднике.
  bool? get memberDetails;

  /// Окно статистики.
  bool? get statisticPage;

  /// Окно ленты задач.
  bool? get taskTapePage;

  /// Окно ленты сотрудников.
  bool? get teamTapePage;

  /// Отчеты.
  bool? get reports;

  /// Окно списка чатов.
  bool? get chatList;

  /// Окно статистики загрузки подразделений.
  bool? get workload;

  AccessPermissions._();

  factory AccessPermissions([void Function(AccessPermissionsBuilder) updates]) = _$AccessPermissions;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(AccessPermissions.serializer, this) as Map<String, dynamic>;
  }

  static AccessPermissions? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(AccessPermissions.serializer, json);
  }

  static Serializer<AccessPermissions> get serializer => _$accessPermissionsSerializer;
}
