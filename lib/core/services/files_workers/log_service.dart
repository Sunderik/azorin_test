import 'dart:async';
import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/core/services/files_workers/file_worker.dart';

/// Сервис для работы с файлом хранящим данные для работы в оффлайн режиме.
@singleton
class LogSaverService implements IFileWorker {
  /// Название файла оффлайн данных
  static const _fileName = 'tecon_task_logs.txt';

  /// Обьект синхронизации взаимодействия с файлом
  static final _lock = Lock();

  @override
  Future<void> addElement<E>(E element) async {
    try {
      File _file = await getFile();
      await _lock.synchronized(() async {
        await _file.writeAsString(element as String, mode: FileMode.append);
      });
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<bool> checkData() async {
    var _data = await getData<String>();
    return _data != null ? true : false;
  }

  @override
  Future<void> clearFile() async {
    try {
      _lock.synchronized(() async {
        File file = await getFile();
        await file.writeAsString('');
      });
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<T?> getData<T>() async {
    File file = await getFile();
    return _lock.synchronized(() async {
      String _fileContent = await file.readAsString();
      return _fileContent as T;
    });
  }

  @override
  Future<File> getFile() async {
    try {
      // Получение пути к папке, где лежит файл.
      var _dir = await PathProvider.getExternalDocumentsDir;
      // Получение доступа к файлу.
      File _file = await File('${_dir!.path}/$_fileName');
      // Создание файла если его не существует;
      if (!await _file.exists()) {
        await _file.create();
        await _writeInitData();
      } else {
        await _checkFile();
      }
      return _file;
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<void> updateData<D>(D data) async {
    try {
      File _file = await getFile();
      var _parse = data as String;
      await _lock.synchronized(() async {
        await _file.writeAsString(_parse);
      });
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<void> deleteFile() async {
    try {
      await _lock.synchronized(() async {
        File _file = await getFile();
        if (await _file.exists()) {
          await _file.delete();
        }
      });
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<int> getFileSize() async {
    var _dir = await PathProvider.getExternalDocumentsDir;
    // Получение доступа к файлу.
    File _file = await File('${_dir!.path}/$_fileName');
    try {
      var _sizeInBytes = await _file.length();
      var sizeInMb = _sizeInBytes / (1024 * 1024);
      return sizeInMb.floor();
    } catch (e) {
      throw e;
    }
  }

  /// Отправить логи на почту.
  Future<void> sendLogs() async {
    final File file = await getFile();
    final Email email = Email(
      body: 'Отчет о действиях от ${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}',
      subject: 'Отчет о действиях',
      recipients: ['teconmobile@ivtecon.ru'],
      attachmentPaths: [file.path],
      isHTML: false,
    );
    await FlutterEmailSender.send(email);
  }

  Future<void> _checkFile() async {
    var _sizeInMb = await getFileSize();
    if (_sizeInMb > 10) {
      await clearFile();
      await _writeInitData();
    }
  }

  Future<void> _writeInitData() async {
    var _firstString =
        'Время создания: ${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year} ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}:${DateTime.now().millisecond}';

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    var _platformInfo = (await deviceInfo.androidInfo).toString();
    await addElement<String>(_firstString);
    await addElement<String>(_platformInfo);
  }
}
