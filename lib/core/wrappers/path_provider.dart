import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path_provider_windows/path_provider_windows.dart';

///Оболочка для плагина  path_provider, для доступа к файловой системе.
@singleton
class PathProvider {
  static Future<Directory?>? _requestTempDirectory() async {
    if (kIsWeb) {
      throw Exception('Web не поддерживается');
    }
    try {
      if (Platform.isAndroid || Platform.isIOS)
        return getTemporaryDirectory();
      else if (Platform.isWindows) {
        var _path = await PathProviderWindows().getTemporaryPath();
        var _dir = Directory(_path!);
        var _fDir = Future(() => _dir);
        return _fDir;
      } else
        return null;
    } catch (_) {
      throw Exception('Не удалось найти временный каталог приложения.');
    }
  }

  static Future<Directory?>? _requestAppSupportDirectory() async {
    if (kIsWeb) {
      throw Exception('Web не поддерживается');
    }
    try {
      if (Platform.isAndroid || Platform.isIOS)
        return getApplicationSupportDirectory();
      else if (Platform.isWindows) {
        var _path = await PathProviderWindows().getApplicationSupportPath();
        var _dir = Directory(_path!);
        var _fDir = Future(() => _dir);
        return _fDir;
      } else
        return null;
    } catch (_) {
      throw Exception('Не удалось найти каталог с файлами для поддержания работоспособности');
    }
  }

  static Future<Directory?>? _requestAppLibraryDirectory() async {
    if (kIsWeb) {
      throw Exception('Web не поддерживается');
    }
    try {
      if (Platform.isAndroid || Platform.isIOS)
        return getLibraryDirectory();
      else if (Platform.isWindows) {
        var _path = await PathProviderWindows().getLibraryPath();
        var _dir = Directory(_path!);
        var _fDir = Future(() => _dir);
        return _fDir;
      } else
        return null;
    } catch (_) {
      throw Exception('Не удалось найти каталог с постояннами файлами');
    }
  }

  static Future<Directory?>? _requestAppDocumentsDirectory() async {
    if (kIsWeb) {
      throw Exception('Web не поддерживается');
    }
    try {
      if (Platform.isAndroid || Platform.isIOS) {
        return getApplicationDocumentsDirectory();
      } else if (Platform.isWindows) {
        var _path = await PathProviderWindows().getApplicationDocumentsPath();
        var _dir = Directory(_path!);
        var _fDir = Future(() => _dir);
        return _fDir;
      }
    } catch (_) {
      throw Exception('Не удалось найти каталог с данными приложения');
    }
  }

  static Future<Directory?>? _requestExternalDocumentsDirectory() async {
    if (kIsWeb) {
      throw Exception('Web не поддерживается');
    }
    try {
      if (Platform.isAndroid || Platform.isIOS)
        return getExternalStorageDirectory();
      else if (Platform.isWindows) {
        var _path = await PathProviderWindows().getExternalStoragePath();
        var _dir = Directory(_path!);
        var _fDir = Future(() => _dir);
        return _fDir;
      } else
        return null;
    } catch (_) {
      throw Exception('Не удалось найти внешнюю папку с файлами.');
    }
  }

  static Future<List<Directory>?>? _requestExternalDownloadsDirectories() {
    if (kIsWeb) {
      throw Exception('Web не поддерживается');
    }
    if (Platform.isWindows) {
      throw Exception('Desktop не поддерживается');
    }
    try {
      if (Platform.isAndroid || Platform.isIOS)
        return getExternalStorageDirectories(type: StorageDirectory.downloads);
      else
        return null;
    } catch (_) {
      throw Exception('Не удалось найти внешнюю папку с загруженными файлами.');
    }
  }

  static Future<List<Directory>?>? _requestExternalCacheDirectories() {
    if (kIsWeb) {
      throw Exception('Web не поддерживается');
    }
    if (Platform.isWindows) {
      throw Exception('Desktop не поддерживается');
    }
    try {
      if (Platform.isAndroid || Platform.isIOS)
        return getExternalCacheDirectories();
      else
        return null;
    } catch (_) {
      throw Exception('Не удалось найти внешнюю папку с закешированными даннымию');
    }
  }

  /// Путь к временному каталогу на устройстве, для которого не выполняется резервное копирование и которое
  /// подходит для хранения кешей загруженных файлов.
  static Future<Directory?>? get getTempDir => _requestTempDirectory();

  /// Путь к каталогу, в котором приложение может разместить файлы для
  /// поддержки приложения.
  static Future<Directory?>? get getSupportDir => _requestAppSupportDirectory();

  /// Путь к каталогу, в котором приложение может хранить постоянные файлы,
  /// зарезервировано и не отображается для пользователя, например может хранить sqlite.db.
  static Future<Directory?>? get getLibraryDir => _requestAppLibraryDirectory();

  /// Путь к каталогу, в котором приложение может размещать данные,
  /// созданные пользователем, или который иначе не может быть воссоздан приложением.
  static Future<Directory?>? get getAppDocumentsDir => _requestAppDocumentsDirectory();

  /// Путь к каталогу, в котором приложение может получить доступ к внешнему хранилищу данных.
  /// Текущая операционная система должна быть определена перед использованием этого метода.
  /// Эта функция доступна только на Android.
  static Future<Directory?>? get getExternalDocumentsDir => _requestExternalDocumentsDirectory();

  /// Пути к каталогам, в которых могут храниться данные загруженные на устройство.
  /// Эти пути обычно находятся во внешнем хранилище, например, в отдельных каталогах или на SD-карте.
  /// В телефоне может быть несколько достпных каталогов для хранения загруженных файлов.
  static Future<List<Directory>?>? get getExternalCacheDir => _requestExternalDownloadsDirectories();

  /// Пути к каталогам, в которых могут храниться данные приложения.
  /// Эти пути обычно находятся во внешнем хранилище, например, в отдельных каталогах или на SD-карте.
  /// В телефоне может быть несколько достпных каталогов для хранения загруженных файлов.
  static Future<List<Directory>?>? get getExternalDownloadsDirectories => _requestExternalCacheDirectories();
}
