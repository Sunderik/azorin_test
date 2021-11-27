import 'package:built_redux/built_redux.dart';
import 'package:tecon_task/core/core.dart';

part 'user_actions.g.dart';

abstract class UserActions extends ReduxActions {
  UserActions._();

  factory UserActions() => _$UserActions();

  /// Установка ключа доступа к api из запроса авторизации.
  late ActionDispatcher<String> setApiKey;

  /// Запись текущего пользователя в стейт.
  late ActionDispatcher<CurrentUser> setCurrentUser;

  /// Смена статуса проекта в userRole
  /// actions является массивом строк из 2х элементов
  /// 1-й элемент это guid, 2-й - guid нового статуса.
  late ActionDispatcher<SimpleType> changeProjectStatus;

  /// Очистка стейта с пользователем (только при логауте).
  late ActionDispatcher<void> clear;
}
