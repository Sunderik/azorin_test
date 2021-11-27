import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/core/domain/objects/models/notification.dart' as model;
import 'package:tecon_task/features/navigation/data/transition_type.dart';
import 'package:tecon_task/injection.dart';

class ShowSnackBar {
  static const _baseInfoDuration = Duration(seconds: 2, milliseconds: 500);
  static const _baseWarningDuration = Duration(days: 1);
  static const _baseNotificationDuration = Duration(days: 1);

  static void showNotificationSnackBar({required model.Notification notification, Function(GetBar<Object>)? onTap}) {
    if (Get.isSnackbarOpen ?? false) Get.back();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      Get.snackbar(notification.notificationTitle!, '',
          messageText: Text(
            notification.notificationBody!,
            style: TextStyle(color: Colors.black, fontSize: 14.0),
            softWrap: true,
          ),
          icon: notification.imageUrl != null
              ? GestureDetector(
                  onTap: () => {
                    injector.get<StoreProvider>().store!.actions.navigation.routeTo(
                          AppRoute((builder) => builder
                            ..route = Routes.showImages
                            ..navigationType = NavigationType.push
                            ..transitionType = TransitionType.size
                            ..bundle = {'url': notification.imageUrl, 'instanceId': ''}),
                        ),
                  },
                  child: Container(height: 48, width: 48, child: CachedNetworkImage(imageUrl: notification.imageUrl!)),
                )
              : null,
          borderRadius: 10.0,
          borderColor: Colors.black12,
          borderWidth: 0.5,
          backgroundColor: Colors.white70,
          barBlur: 5.0,
          shouldIconPulse: true,
          duration: _baseNotificationDuration,
          snackPosition: SnackPosition.TOP,
          margin: const EdgeInsets.all(10),
          snackStyle: SnackStyle.FLOATING,
          isDismissible: true,
          dismissDirection: SnackDismissDirection.HORIZONTAL,
          onTap: onTap);
    });
  }

  static void showWarningSnackBar(
      {required String message, Icon? icon, SnackPosition position = SnackPosition.BOTTOM}) {
    if (Get.isSnackbarOpen ?? false) Get.back();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      Get.snackbar('', '',
          titleText: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  'Ошибка',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ],
          ),
          messageText: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: icon,
                  ),
                Flexible(
                  child: Text(
                    message,
                    style: TextStyle(color: Colors.white, fontSize: 14.0),
                  ),
                ),
              ],
            ),
          ),
          borderRadius: 10.0,
          borderColor: Colors.black,
          borderWidth: 0.5,
          backgroundColor: Colors.black87,
          barBlur: 5.0,
          shouldIconPulse: true,
          duration: _baseWarningDuration,
          snackPosition: position,
          margin: const EdgeInsets.all(10),
          snackStyle: SnackStyle.FLOATING,
          isDismissible: true,
          dismissDirection: SnackDismissDirection.HORIZONTAL);
    });
  }

  static void showInfoSnackBar({required String message, Icon? icon}) {
    if (Get.isSnackbarOpen ?? false) Get.back();
    SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
      Get.snackbar('', '',
          titleText: Container(),
          messageText: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: icon,
                  ),
                Flexible(
                  child: Text(
                    message,
                    style: TextStyle(color: Colors.white, fontSize: 14.0),
                  ),
                ),
              ],
            ),
          ),
          borderRadius: 0.0,
          backgroundColor: Color.fromRGBO(0, 0, 0, 0.55),
          barBlur: 0.0,
          shouldIconPulse: false,
          duration: _baseInfoDuration,
          snackPosition: SnackPosition.BOTTOM,
          margin: const EdgeInsets.all(0),
          snackStyle: SnackStyle.FLOATING,
          isDismissible: true,
          dismissDirection: SnackDismissDirection.HORIZONTAL);
    });
  }
}
