import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:tecon_task/core/library/presentation/image_carousel/carousel_item.dart';

class ImageCarouselView extends StatelessWidget {
  final List<Uint8List> initialData;
  final Stream<List<Uint8List>> stream;
  final Function(int value) onTap;
  final Function(int value) onDelete;
  final double height;

  const ImageCarouselView(
      {Key? key,
      required this.initialData,
      required this.stream,
      required this.onTap,
      required this.onDelete,
      this.height = 150})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Uint8List>>(
        initialData: initialData,
        stream: stream,
        builder: (context, snapshot) {
          List<Uint8List> images = snapshot.data!;
          return Container(
            height: height,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: _mapIndexed(
                  images,
                  (index, image) => CarouselItem(
                        item: image as Uint8List,
                        onTap: () {
                          onTap(index);
                        },
                        onDelete: () {
                          onDelete(index);
                        },
                      )).toList(),
            ),
          );
        });
  }

  Iterable<E> _mapIndexed<E, T>(
      Iterable<T> items, E Function(int index, T item) f) sync* {
    var index = 0;

    for (final item in items) {
      yield f(index, item);
      index = index + 1;
    }
  }
}
