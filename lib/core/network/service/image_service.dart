import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image/image.dart' as im;
import 'package:image_picker/image_picker.dart';

import 'package:tecon_task/core/wrappers/path_provider.dart';

// import 'package:multi_image_picker/multi_image_picker.dart';
class ImageService {
  static const int maxImages = 10;

// static const bool allowMultipleChoice = true;
// static const bool enableCameraInGallery = false;
// static const MaterialOptions materialOptions = MaterialOptions(
// actionBarColor: "#1664A7",
// actionBarTitle: "Выберите изображения",
// allViewTitle: "Все изображения",
// useDetailsView: true,
// selectCircleStrokeColor: "#FFFFFF",
// );

  ImagePicker picker = ImagePicker();

  /// Получить изображения из галлереи в виде коллекции Uint8List и отправить их в контроллер
  Future<void> sinkImagesFromGalleryAsBytes(
    List<Uint8List> images,
    StreamController<List<Uint8List>> imageController, {
    int imageQuality = 100,
    double maxWidth = 1080.0,
    double maxHeight = 1920.0,
    bool allowMultipleChoice = true,
  }) async {
    try {
      List<Uint8List>? imagesAsBytes = await getImagesFromGalleryAsBytes(
        imageQuality: imageQuality,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
        allowMultipleChoice: allowMultipleChoice,
      );
      images.addAll(imagesAsBytes!);
      imageController.sink.add(images);
    } catch (error) {
      print('Catch image picker error: $error');
    }
  }

  /// Получить изображения из галлереи в виде коллекции base64(String)
  Future<List<String>?> getImagesFromGalleryAsBase64({
    int imageQuality = 100,
    double maxWidth = 1080.0,
    double maxHeight = 1920.0,
    bool allowMultipleChoice = true,
    String? textToDraw,
  }) async {
    try {
      List<String> imagesBase64 = List<String>.empty(growable: true);
      List<Uint8List>? imagesAsBytes = await getImagesFromGalleryAsBytes(
        imageQuality: imageQuality,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
        allowMultipleChoice: allowMultipleChoice,
        textToDraw: textToDraw,
      );

      for (int i = 0; i < imagesAsBytes!.length; i++) {
        imagesBase64.add(base64Encode(imagesAsBytes[i]));
      }

      return imagesBase64;
    } catch (error) {
      print('Catch image picker error: $error');
    }
    return null;
  }

  /// Получить изображения из галлереи в виде коллекции Uint8List
  Future<List<Uint8List>?> getImagesFromGalleryAsBytes({
    int imageQuality = 100,
    double maxWidth = 1080.0,
    double maxHeight = 1920.0,
    bool allowMultipleChoice = true,
    String? textToDraw,
  }) async {
    try {
      List<File> files;
      List<Uint8List> listOfBytes = [];
      FilePickerResult filePickerResult;
      filePickerResult = (await FilePicker.platform
          .pickFiles(
            type: FileType.image,
            allowMultiple: allowMultipleChoice,
          )
          // ignore: invalid_return_type_for_catch_error
          .catchError((error) => print('Catch image picker error: $error')))!;

      files = filePickerResult.paths.map((path) => File(path!)).toList();
      for (int i = 0; i < files.length; i++) {
        Uint8List bytes = files[i].readAsBytesSync();
        if (textToDraw != null) {
          bytes = await _drawTextOnImage(bytes, textToDraw);
        }

        bytes = await FlutterImageCompress.compressWithList(bytes,
            quality: imageQuality, minHeight: maxHeight.toInt(), minWidth: maxWidth.toInt());

        bytes = await convertUint8ListToJpg(
          bytes,
          maxWidth: maxWidth,
          maxHeight: maxHeight,
        );

        listOfBytes.add(bytes);
      }
      _deleteCacheDir();
      return listOfBytes;
    } catch (error) {
      print('Catch image picker error: $error');
    }
    return null;
  }

  /// Добавляет надпись [textToDraw] на фото, при этом текущие методы сжатия изображения
  /// не уменьшают размер в значительной мере
  Future<Uint8List> _drawTextOnImage(Uint8List uint8list, String textToDraw) async {
    im.Image image = im.decodeJpg(uint8list);
    im.drawString(
      image,
      im.arial_48,
      (image.width / 2.0 - 112).toInt(),
      (image.height * 0.8).toInt(),
      textToDraw,
    );
    final Directory? tempDir = await PathProvider.getTempDir;
    final File file = await new File('${tempDir!.path}/image.jpg').create();
    file.writeAsBytesSync(im.encodeJpg(image));
    return file.readAsBytes();
  }

  File convertPickedFileToJpg(PickedFile pickedFile) {
    File file = new File(pickedFile.path);
    if (!file.path.toLowerCase().endsWith(".jpg")) {
      im.Image? image = im.decodeImage(file.readAsBytesSync());
      file.writeAsBytesSync(im.encodeJpg(image!));
    }
    return file;
  }

  Future<Uint8List> convertUint8ListToJpg(Uint8List uint8list, {double? maxWidth, double? maxHeight}) async {
    final Directory? tempDir = await PathProvider.getTempDir;
    File file = await new File('${tempDir!.path}/image.jpg').create();

    file.writeAsBytesSync(uint8list);
    if (maxWidth != null || maxHeight != null) {
      file = _resizeImage(file, maxWidth!, maxHeight!);
    }
    if (!file.path.toLowerCase().endsWith(".jpg")) {
      im.Image? image = im.decodeImage(file.readAsBytesSync());
      file.writeAsBytesSync(im.encodeJpg(image!));
    }
    return file.readAsBytesSync();
  }

  File _resizeImage(File file, double? maxWidth, double? maxHeight) {
    im.Image? image = im.decodeImage(file.readAsBytesSync());
    im.Image thumbnail;
    if (maxWidth != null && maxHeight != null) {
      if (maxWidth > maxHeight) {
        thumbnail = im.copyResize(image!, height: maxHeight.toInt(), interpolation: im.Interpolation.average);
      } else {
        thumbnail = im.copyResize(image!, width: maxWidth.toInt(), interpolation: im.Interpolation.average);
      }
    } else {
      thumbnail = im.copyResize(
        image!,
        width: maxWidth!.toInt(),
        height: maxHeight!.toInt(),
        interpolation: im.Interpolation.average,
      );
    }
    file.writeAsBytesSync(im.encodeJpg(thumbnail));
    return file;
  }

  Future<void> _deleteCacheDir() async {
    final cacheDir = await PathProvider.getTempDir;

    if (cacheDir!.existsSync()) {
      cacheDir.deleteSync(recursive: true);
    }
  }
}
