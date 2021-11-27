import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  final String message;

  LoadingDialog({this.message = "Загрузка..."});

  @override
  Widget build(BuildContext context) {
    // final localizations = AppLocalizations.of(context);
    return AlertDialog(
      content: Column(mainAxisSize: MainAxisSize.min, children: [
        CircularProgressIndicator(),
        SizedBox(
          height: 10,
        ),
        Text(
          message,
          style: TextStyle(color: Theme.of(context).textTheme.headline1!.color),
        )
      ]),
    );
  }
}
