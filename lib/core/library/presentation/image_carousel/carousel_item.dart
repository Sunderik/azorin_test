import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  final Uint8List item;
  final GestureTapCallback? onTap;
  final GestureTapCallback? onDelete;
  final double height;
  const CarouselItem(
      {Key? key, required this.item, required this.onTap, this.onDelete, this.height = 150})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width - 70) / 3;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Stack(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: width,
                minWidth: width,
                maxHeight: height,
                minHeight: height,
              ),
              child: Center(
                  child: Image.memory(
                item,
                fit: BoxFit.fill,
                width: width,
              )),
            ),
          ),
          Container(
            width: width,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                    padding: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(45.0)),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).hintColor,
                        borderRadius: BorderRadius.all(Radius.circular(45.0)),
                      ),
                      child: GestureDetector(
                          onTap: onDelete,
                          child: Icon(Icons.close, color: Colors.white)),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
