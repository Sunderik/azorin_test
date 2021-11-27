import 'package:flutter/material.dart';

class TeconTaskAlertDialog extends StatelessWidget {
  final String message;
  final String buttonText;
  final String title;

  TeconTaskAlertDialog(
      {this.message = "Ошибка", this.buttonText = "Ok", this.title = "Ошибка"});

  @override
  Widget build(BuildContext context) {
    // final localizations = AppLocalizations.of(context);
    return AlertDialog(
      title: Text(
        title,
        style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color),
      ),
      content: Text(message,
          style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color)),
      // elevation: 24,
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(buttonText,
              style: TextStyle(color: Theme.of(context).accentColor)),
        ),
      ],
    );
  }
}
