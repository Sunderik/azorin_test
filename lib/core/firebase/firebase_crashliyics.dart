import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:tecon_task/core/library/presentation/dialogs/snackbar.dart';

class FireBaseCrashlytics {
  static Future<void> recordError(dynamic error, StackTrace stackTrace) async {
    await FirebaseCrashlytics.instance.recordError(error, stackTrace);
    ShowSnackBar.showWarningSnackBar(
      message: 'Произошла внутренняя ошибка',
    );
  }

  static Future<void> recordFlutterError(FlutterErrorDetails errorDetails) async {
    await FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
    ShowSnackBar.showWarningSnackBar(
      message: 'Произошла внутренняя ошибка',
    );
  }

  static Future<void> log(String message) async {
    await FirebaseCrashlytics.instance.log(message);
  }

  void addLog(String message) {
    FirebaseCrashlytics.instance.log(message);
  }
}
