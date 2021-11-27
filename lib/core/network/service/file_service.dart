import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/injection.dart';

abstract class FileService {
  Future<String?> fileRequest(String url, String fileName, {Map<String, String>? headers});

  /// Получить путь до папки загрузки (работает только для Android).
  static Future<String?> getDirectoryDownloads() async {
    const MethodChannel _channel = const MethodChannel('tecon_ext_storage');
    return await _channel.invokeMethod('getExternalStoragePublicDirectory', {"type": "Download"});
  }
}

@Injectable(as: FileService)
class FileServiceImpl implements FileService {
  final StoreProvider _storeProvider = injector.get<StoreProvider>();

  @override
  Future<String?> fileRequest(String url, String fileName, {Map<String, String>? headers}) async {
    final token = _storeProvider.store!.state.userState.currentUser?.apiKey;
    if (headers != null) {
      if (headers.containsKey('ApiKey')) {
        headers.update('ApiKey', (update) => '$token', ifAbsent: () => '$token');
      } else {
        headers.addAll({'ApiKey': '$token'});
      }
    } else {
      headers = {'ApiKey': '$token'};
    }
    final String? _localPath = await _findLocalPath();

    final savedDir = Directory(_localPath!);
    bool hasExisted = await savedDir.exists();
    if (!hasExisted) {
      savedDir.create();
    }
    bool fileExists = await File('${savedDir.path}/$fileName').exists();
    int iterator = 1;
    String updatedFileName = fileName;
    while (fileExists) {
      final nameAndType = fileName.split('.');
      updatedFileName = '${nameAndType[0]} ($iterator).${nameAndType[1]}';
      fileExists = await File('${savedDir.path}/$updatedFileName').exists();
      iterator++;
    }

    await Permission.storage.request();

    return await FlutterDownloader.enqueue(
      url: url,
      savedDir: _localPath,
      headers: headers,
      fileName: updatedFileName,
      showNotification: true,
      openFileFromNotification: true,
    );
  }

  Future<String?> _findLocalPath() async {
    final String? directory = (Platform.isAndroid
        ? await FileService.getDirectoryDownloads()
        : (await PathProvider.getAppDocumentsDir)!) as String?;
    return directory;
  }
}
