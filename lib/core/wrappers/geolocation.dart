import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart' as loc;
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/core/domain/objects/enums.dart';
import 'package:tecon_task/core/domain/objects/models/position_item.dart';
import 'package:tecon_task/core/library/presentation/dialogs/snackbar.dart';
import 'package:tecon_task/features/logger/logger.dart';

class Geolocation {
  static loc.Location location = new loc.Location();

  /// Получает координаты из плагина геопозиции
  static Future<PositionItem> coordinates() async {
    return await getLocation();
  }

  @Deprecated('Не использовать, поскольку не работает на некоторых телефонах в частности на Xiaomi')
  static Future<PositionItem> getPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Служба GPS отключена. Включите передачу геоданных.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Приложению отказано в использовании GPS');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error('Приложению полностью отказано в использовании GPS. Выдайте разрешение в настройках.');
    }

    try {
      Position? _pos = await GeolocatorPlatform.instance
          .getCurrentPosition(
              desiredAccuracy: LocationAccuracy.lowest,
              forceAndroidLocationManager: true,
              timeLimit: Duration(seconds: 5))
          .catchError((error) {
        if (error is TimeoutException) {
          return Position(
              latitude: 0,
              accuracy: 0,
              altitude: 0,
              speed: 0,
              speedAccuracy: 0,
              longitude: 0,
              heading: 0,
              timestamp: DateTime.now());
        } else
          throw Future.error(error.toString());
      });

      return PositionItem(
        type: PositionTypeEnum.position,
        coordinates: Coordinates((b) => b
          ..longitude = _pos.longitude
          ..latitude = _pos.latitude
          ..timeOfChange = _pos.timestamp!.toIso8601String()),
      );
    } catch (e) {
      logger.e(e);
      return PositionItem(type: PositionTypeEnum.log, displayValue: e.toString());
    }
  }

  static Future<PositionItem> getLocation() async {
    bool serviceEnabled;
    loc.PermissionStatus permission;

    // Test if location services are enabled.
    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Служба GPS отключена. Включите передачу геоданных.');
    }

    permission = await location.hasPermission();
    if (permission == loc.PermissionStatus.denied) {
      permission = await location.requestPermission();
      if (permission == loc.PermissionStatus.denied) {
        return Future.error('Приложению отказано в использовании GPS');
      }
    }

    if (permission == loc.PermissionStatus.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error('Приложению полностью отказано в использовании GPS. Выдайте разрешение в настройках.');
    }

    location.changeSettings(accuracy: loc.LocationAccuracy.low);
    try {
      loc.LocationData _loc = await location.getLocation().catchError((error) {
        if (error is TimeoutException) {
          ShowSnackBar.showWarningSnackBar(message: 'Не удалось получить данные GPS за отведенное время.');
        } else
          throw Future.error(error.toString());
      });

      return PositionItem(
        type: PositionTypeEnum.position,
        coordinates: Coordinates((b) => b
          ..longitude = _loc.longitude!
          ..latitude = _loc.latitude!
          ..timeOfChange = DateTime.fromMillisecondsSinceEpoch(_loc.time!.toInt()).toIso8601String()),
      );
    } catch (e) {
      logger.e(e);
      return PositionItem(type: PositionTypeEnum.log, displayValue: e.toString());
    }
  }

  /// Открытие настроек приложения.
  void openAppSettings() {
    GeolocatorPlatform.instance.openAppSettings();
  }
}
