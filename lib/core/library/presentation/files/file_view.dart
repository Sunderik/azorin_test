import 'package:flutter/material.dart';
import 'package:tecon_task/core/library/presentation/files/file_item.dart';
import 'package:tecon_task/core/domain/domain.dart';

class FileView extends StatelessWidget {
  final List<AttachedFile> files;
  final Function(int value)? onTap;

  const FileView({
    Key? key,
    required this.files,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: _mapIndexed(
              files,
              (index, file) => FileItem(
                    title:
                        '${files[index].name!.length > 7 ? '${files[index].name!.substring(0, 7)}.. ' : files[index].name}.${files[index].type}',
                    subtitle: '${files[index].size}',
                    onTap: () => onTap!(index),
                  )).toList()),
    );
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
