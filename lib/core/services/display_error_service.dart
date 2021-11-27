import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/modern_pictograms_icons.dart';
import 'package:get/get_navigation/src/snackbar/snack.dart';
import 'package:injectable/injectable.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/core/network/models/not_sent_request_model.dart';
import 'package:tecon_task/features/logger/logger.dart';
import 'package:tecon_task/injection.dart';

///Серивис по отображению сообщения об ошибке при потере соединения
@singleton
class DisplayErrorService {
  late final StoreProvider _storeProvider = injector.get<StoreProvider>();

  void displayNetworkError({Exception? exception, NotSentRequestModel? request, required bool isSaveQuery}) async {
    logger.e(exception.toString(), exception, StackTrace.current);
    if (exception != null)
      switch (exception.runtimeType) {
        case TimeoutException:
          {
            ShowSnackBar.showWarningSnackBar(
                message: isSaveQuery
                    ? 'Сервер не ответил за отведенное время. Ваш запрос был сохранен и будет отправлен при появлении сети.'
                    : 'Сервер не ответил за отведенное время.',
                icon: new Icon(FontAwesome5.times_circle, color: Colors.white),
                position: SnackPosition.TOP);
            break;
          }
        case SocketException:
          {
            ShowSnackBar.showWarningSnackBar(
                message: isSaveQuery
                    ? 'Нет подключения к сети. Ваш запрос был сохранен и будет отправлен при появлении сети.'
                    : 'Нет подключения к сети.',
                icon: new Icon(ModernPictograms.signal, color: Colors.white),
                position: SnackPosition.TOP);
            break;
          }
      }

    ///проверка, нужно ли запоимнать этот запрос (в основном post запросы)
    if (isSaveQuery) {
      _storeProvider.store!.actions.eventsActions.addRequest(request!);
    }
  }

  void displayServerError({int? httpCode, String? message}) {
    if (httpCode != null)
      switch (httpCode) {
        case HttpStatus.badGateway:
          {
            ShowSnackBar.showWarningSnackBar(
                message: 'Сервер временно недоступен',
                icon: new Icon(FontAwesome5.server, color: Colors.white),
                position: SnackPosition.TOP);
            break;
          }
        case HttpStatus.badRequest:
          {
            ShowSnackBar.showWarningSnackBar(
                message: 'Отправлен некорректный запрос',
                icon: new Icon(FontAwesome5.server, color: Colors.white),
                position: SnackPosition.TOP);
            break;
          }
        case HttpStatus.unauthorized:
          {
            if (_storeProvider.store!.state.userState.currentUser != null) {
              ShowSnackBar.showWarningSnackBar(
                  message: 'Недостаточно прав',
                  icon: new Icon(FontAwesome5.user_circle, color: Colors.white),
                  position: SnackPosition.TOP);
            } else {
              ShowSnackBar.showWarningSnackBar(
                  message: 'Неверный логин или пароль',
                  icon: new Icon(FontAwesome5.user_circle, color: Colors.white),
                  position: SnackPosition.TOP);
            }
            break;
          }
        case HttpStatus.forbidden:
        case HttpStatus.notFound:
        case HttpStatus.internalServerError:
          {
            ShowSnackBar.showWarningSnackBar(
                message: message!,
                icon: new Icon(FontAwesome5.server, color: Colors.white),
                position: SnackPosition.TOP);
            break;
          }
        default:
          {
            ShowSnackBar.showWarningSnackBar(
                message: 'Произошла неизвестная ошибка на сервере.',
                icon: new Icon(FontAwesome5.server, color: Colors.white),
                position: SnackPosition.TOP);
            break;
          }
      }
  }
}
