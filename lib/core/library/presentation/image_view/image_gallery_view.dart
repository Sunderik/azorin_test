import 'dart:async';
import 'dart:typed_data';
import 'package:file/file.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:share/share.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/core/library/presentation/dialogs/snackbar.dart';
import 'package:tecon_task/features/logger/logger.dart';

class ImageGalleryView extends StatefulWidget {
  final List<Uint8List>? images;
  final List<String>? urls;
  final String? instanceId;
  final int initIndex;

  ImageGalleryView({
    Key? key,
    this.images,
    this.urls,
    this.instanceId,
    required this.initIndex,
  })  : assert(images != null || (urls != null && instanceId != null)),
        super(key: key);

  @override
  _ImageGalleryViewState createState() => _ImageGalleryViewState();
}

class _ImageGalleryViewState extends State<ImageGalleryView> {
  PageController? _localPageController;
  late int indexPage;
  late StreamController<int> imageNumberController;

  DefaultCacheManager manager = DefaultCacheManager();

  @override
  void initState() {
    super.initState();
    _localPageController = PageController(initialPage: widget.initIndex);
    indexPage = widget.initIndex;

    imageNumberController = StreamController<int>.broadcast();

    _localPageController!.addListener(() {
      if ((_localPageController!.page!.toInt() != indexPage)) {
        indexPage = _localPageController!.page!.toInt();
        imageNumberController.sink.add(indexPage);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _localPageController!.dispose();
    imageNumberController.close();
  }

  Future<void> _saveImage(Uint8List bytes) async {
    final Directory? directory = ((await PathProvider.getExternalDocumentsDir)!) as Directory?;
    DateTime time = DateTime.now();
    String keyName =
        "TECON_${time.day}${time.month}${time.year}_${time.hour}:${time.minute}:${time.second}:${time.millisecond}";
    final File file = await directory!.childFile('${directory.path}/$keyName.jpg').create();
    await file.writeAsBytes(bytes, flush: true);
    GallerySaver.saveImage(file.path, albumName: 'TeconTask')
        .then((value) => ShowSnackBar.showInfoSnackBar(message: 'Изображение сохранено!'));
  }

  Future<void> _saveNetworkImage(String url) async {
    final Future<FileInfo?> file = manager.getFileFromCache(widget.urls![indexPage]);
    file.then((value) async {
      final FileInfo? file = value;
      if (file != null) {
        PathProvider.getExternalDocumentsDir!.then((directory) {
          if (directory != null) {
            DateTime time = DateTime.now();
            String keyName =
                "TECON_${time.day}${time.month}${time.year}_${time.hour}_${time.minute}_${time.second}_${time.millisecond}";
            final File createdFile = file.file.copySync('${directory.path}/$keyName.jpg');
            GallerySaver.saveImage(createdFile.path, albumName: 'TeconTask')
                .then((value) => ShowSnackBar.showInfoSnackBar(message: 'Изображение сохранено!'));
          } else {
            logger.d('directory is null in _saveNetworkImage');
          }
        });
      } else {
        logger.d('file is null in _saveNetworkImage');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isNetwork = widget.urls != null ? true : false;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.5),
          title:
              (widget.urls != null && widget.urls!.length > 1) || (widget.images != null && widget.images!.length > 1)
                  ? StreamBuilder<int>(
                      stream: imageNumberController.stream,
                      initialData: indexPage,
                      builder: (context, snapshot) {
                        return Text(
                          '${snapshot.data! + 1} / ${isNetwork ? widget.urls!.length : widget.images!.length}',
                          style: TextStyle(color: Colors.white),
                        );
                      },
                    )
                  : Container(
                      width: 0,
                      height: 0,
                    ),
          actions: [
            PopupMenuButton(onSelected: (value) async {
              switch (value) {
                case 0:
                  isNetwork ? _saveNetworkImage(widget.urls![indexPage]) : _saveImage(widget.images![indexPage]);
                  break;
                case 1:
                  if (widget.urls != null) {
                    final Future<FileInfo?> file = manager.getFileFromCache(widget.urls![indexPage]);
                    file.then((value) {
                      final List<String> paths = [value!.file.path];
                      Share.shareFiles(paths);
                    });
                  } else if (widget.images != null) {
                    final File file = await manager.putFile('', widget.images![indexPage],
                        maxAge: const Duration(days: 1), fileExtension: 'jpg');
                    final List<String> paths = [file.path];
                    Share.shareFiles(paths);
                  }
                  break;
              }
            }, itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 0,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.file_download,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          'Сохранить',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          'Поделиться',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ];
            }),
          ],
        ),
        body: isNetwork
            ? Center(
                child: StreamBuilder<int>(
                    stream: imageNumberController.stream,
                    builder: (context, snapshot) {
                      return PageView.builder(
                        physics: const BouncingScrollPhysics(),
                        controller: _localPageController,
                        itemCount: this.widget.urls?.length,
                        itemBuilder: (context, position) {
                          return CachedNetworkImage(
                            httpHeaders: {'InstanceId': widget.instanceId!},
                            imageUrl: widget.urls![position],
                            progressIndicatorBuilder: (context, url, downloadProgress) =>
                                Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                            errorWidget: (context, url, error) => Icon(Icons.error),
                            imageBuilder: (context, imageProvider) => PhotoView(
                              imageProvider: imageProvider,
                              minScale: PhotoViewComputedScale.contained * 0.8,
                              maxScale: PhotoViewComputedScale.contained * 3.0,
                              heroAttributes: PhotoViewHeroAttributes(tag: widget.urls![position]),
                            ),
                            cacheManager: manager,
                          );
                        },
                      );
                    }),
              )
            : PhotoViewGallery.builder(
                scrollPhysics: const BouncingScrollPhysics(),
                builder: (BuildContext context, int index) {
                  return PhotoViewGalleryPageOptions(
                    imageProvider: MemoryImage(widget.images![index]),
                    minScale: PhotoViewComputedScale.contained * 0.8,
                    maxScale: PhotoViewComputedScale.contained * 3.0,
                    heroAttributes: PhotoViewHeroAttributes(tag: widget.images![index]),
                  );
                },
                itemCount: widget.images!.length,
                pageController: _localPageController,
              ),
      ),
    );
  }
}
