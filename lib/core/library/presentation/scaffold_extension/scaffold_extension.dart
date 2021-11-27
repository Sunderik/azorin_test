import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tecon_task/app_starter.dart';

extension ScaffoldExtension on Scaffold {
  /// Метод [willPopScope] реагирует на нажатие на кнопку "назад"
  Widget willPopScope() {
    DateTime? currentBackPressTime;

    return WillPopScope(
      child: this,
      onWillPop: () {
        DateTime now = DateTime.now();
        final bool? canPop = store!.state.navigationState.rootNavigatorKey.currentState!.canPop();
        if ((currentBackPressTime == null || now.difference(currentBackPressTime!) > Duration(seconds: 2)) &&
            canPop == false) {
          Fluttertoast.showToast(
              msg: 'Нажмите ещё раз для закрытия',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.white.withOpacity(0.5),
              textColor: Colors.black,
              fontSize: 16.0);
          currentBackPressTime = now;

          return Future.value(false);
        }

        currentBackPressTime = null;
        return Future.value(true);
      },
    );
  }
}
