import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/core/domain/objects/enums.dart';
import 'package:tecon_task/core/domain/objects/models/notification.dart';
import 'package:tecon_task/core/domain/objects/models/notification_data.dart';
import 'package:tecon_task/core/library/presentation/dialogs/snackbar.dart';
import 'package:tecon_task/features/navigation/data/transition_type.dart';
import 'package:tecon_task/injection.dart';
import 'package:collection/collection.dart';

class Messaging {
  static final store = injector.get<StoreProvider>().store;
  static final FirebaseMessaging messaging = FirebaseMessaging.instance;

  static Future<String?> getPushToken() async {
    if (!kIsWeb) {
      return messaging.getToken();
    }
    else {
      return messaging.getToken(
          vapidKey: "BK8qztMUjeyU8woQQVwQuwPSJ63qxQc8rgVb7Bau_DtB-Pwh10rlwMuXEAv2llrg3OMeGPz1DIUdPk2TrQfCv1c",
      );
    }
  }

  static Future<void> handleMessage(RemoteMessage message, {bool showSnackBar = false}) async {
    final _notification = convertMessage(message);
    if (showSnackBar) {
      ShowSnackBar.showNotificationSnackBar(
          notification: _notification,
          onTap: (_) => {
                if (Get.isSnackbarOpen!)
                  {
                    Get.back(),
                  },
                moveTo(_notification)
              });
    }
    store!.actions.eventsActions.addNotification(_notification);
  }

  static moveTo(Notification notification) {
    final NotificationTypeEnum? type =
        NotificationTypeEnum.values.firstWhereOrNull((e) => e.guids == notification.data!.notificationTypeGuid);
    store!.actions.eventsActions.removeNotification(notification);

    // Получение перечисления статусов чата
    final _chatStatusEnum = CollectionEnums.getCommonEnumByGuid(CollectionEnums.chatStatus.guid);

    switch (type) {
      case NotificationTypeEnum.createTask:
        {
          final bundle = {
            'taskGuid': notification.data!.objectGuid,
            'projectGuid': notification.data!.projectGuid,
          };
          store!.actions.navigation.routeTo(
            AppRoute((builder) => builder
              ..route = Routes.taskDetails
              ..navigationType = NavigationType.push
              ..transitionType = TransitionType.rightSlide
              ..bundle = bundle),
          );
          break;
        }
      case NotificationTypeEnum.addCommentTask:
      case NotificationTypeEnum.addPhotoTask:
      case NotificationTypeEnum.addFileTask:
        {
          final bundle = {
            'taskGuid': notification.data!.objectGuid,
            'projectGuid': notification.data!.projectGuid,
            //     'initialTabIndex': 1,
          };
          store!.actions.navigation.routeTo(
            AppRoute((builder) => builder
              ..route = Routes.taskDetails
              ..navigationType = NavigationType.push
              ..transitionType = TransitionType.rightSlide
              ..bundle = bundle),
          );
          break;
        }

      case NotificationTypeEnum.addCommentProblem:
      case NotificationTypeEnum.addPhotoProblem:
      case NotificationTypeEnum.addFileProblem:
        {
          final bundle = {
            'problemGuid': notification.data!.objectGuid,
            'projectId': notification.data!.projectGuid,
            'sourcePage': ProblemNavigationEnum.fromPushNotification,
            //   'initialTabIndex': 1,
          };
          store!.actions.navigation.routeTo(
            AppRoute((builder) => builder
              ..route = Routes.problemDetails
              ..navigationType = NavigationType.push
              ..transitionType = TransitionType.fade
              ..bundle = bundle),
          );
          break;
        }
      case NotificationTypeEnum.createProblem:
      case NotificationTypeEnum.changeProblemStatus:
      case NotificationTypeEnum.changeProblemType:
        {
          final bundle = {
            'problemGuid': notification.data!.objectGuid,
            'projectId': notification.data!.projectGuid,
            'sourcePage': ProblemNavigationEnum.fromPushNotification
          };
          store!.actions.navigation.routeTo(
            AppRoute((builder) => builder
              ..route = Routes.problemDetails
              ..navigationType = NavigationType.push
              ..transitionType = TransitionType.fade
              ..bundle = bundle),
          );
          break;
        }
      case NotificationTypeEnum.stoppedProject:
      case NotificationTypeEnum.startedProject:
        {
          store!.actions.navigation.routeTo(
            AppRoute((builder) => builder
              ..navigationType = NavigationType.push
              ..transitionType = TransitionType.fade
              ..bundle = {'projectGuid': notification.data!.projectGuid}
              ..route = Routes.projectDetails),
          );
          break;
        }
      case NotificationTypeEnum.takeShift:
      case NotificationTypeEnum.passShift:
        {
          store!.actions.navigation.routeTo(
            AppRoute((builder) => builder
              ..navigationType = NavigationType.push
              ..transitionType = TransitionType.fade
              ..bundle = {'projectGuid': notification.data!.projectGuid}
              ..route = Routes.membersList),
          );
          break;
        }
      case NotificationTypeEnum.chatMessage:
        {
          final bundle = {
            'problem': ProblemDetails((builder) => builder
              ..guid = notification.data!.objectGuid
              ..chatStatus = _chatStatusEnum?.getCommonEnumItemByAppId(ChatStatusEnum.opened.appId)?.guid),
            'projectId': notification.data!.projectGuid,
            'sourcePage': ProblemNavigationEnum.fromChatList,
          };
          store!.actions.navigation.routeTo(
            AppRoute((builder) => builder
              ..route = Routes.problemDetails
              ..navigationType = NavigationType.push
              ..transitionType = TransitionType.fade
              ..bundle = bundle),
          );
          break;
        }
      case NotificationTypeEnum.employeeTruancy:
        // Если идентификатор текущего проекта и проекта из уведомления
        // не совпадают, то скрываем drawerMenu.
        final displayDrawerMenu =
            store?.state.projectsState.currentProject?.guid == notification.data?.projectGuid ? true : false;

        if (!displayDrawerMenu) {
          // Очищаем список сотрудников
          store?.actions.team.clear(null);
        }

        final bundle = {'projectGuid': notification.data?.projectGuid, 'displayDrawerMenu': displayDrawerMenu};

        final routeTo = AppRoute((builder) => builder
          ..route = Routes.membersList
          ..navigationType = NavigationType.push
          ..transitionType = TransitionType.fade
          ..bundle = bundle);
        store?.actions.navigation.routeTo(routeTo);
        break;
      case NotificationTypeEnum.unknown:
      default:
        {
          store!.actions.navigation.routeTo(
            AppRoute((builder) => builder
              ..navigationType = NavigationType.push
              ..transitionType = TransitionType.fade
              ..route = Routes.about),
          );
          break;
        }
    }
  }

  static Notification convertMessage(RemoteMessage message) {
    return Notification((builder) => builder
      ..notificationTitle = message.notification!.title
      ..notificationBody = message.notification!.body
      ..imageUrl = message.notification!.android!.imageUrl
      ..senderId = message.senderId
      ..category = message.category
      ..collapseKey = message.collapseKey
      ..from = message.from
      ..messageId = message.messageId
      ..messageType = message.messageType
      ..threadId = message.threadId
      ..data = message.data.length > 0 ? NotificationData.fromJson(message.data)!.toBuilder() : null);
  }
}
