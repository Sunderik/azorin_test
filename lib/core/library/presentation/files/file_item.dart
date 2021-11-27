import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tecon_task/core/theme/colors.dart';
import 'package:tecon_task/core/theme/theme.dart';

class FileItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final GestureTapCallback? onTap;
  final double height;
  final double width;

  const FileItem(
      {Key? key, required this.title, required this.subtitle, this.onTap, this.height = 50, this.width = 160})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(60, 196, 196, 196),
            borderRadius: BorderRadius.circular(5.0),
          ),
          height: height,
          width: width,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Icon(Icons.insert_drive_file, color: Theme.of(context).backgroundColor),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      this.title,
                      maxLines: 1,
                      style: TextStyle(
                        letterSpacing: 0.15,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).backgroundColor,
                      ),
                    ),
                    AutoSizeText(
                      this.subtitle,
                      maxLines: 1,
                      style: TextStyle(
                        letterSpacing: 0.15,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: lighterGrey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
