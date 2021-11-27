import 'package:flutter/material.dart';

class AlertDialogContinueCancel extends StatelessWidget {
  final String title;
  final String description;
  final String continueButtonText;
  final String cancelButtonText;
  final Function() onPressed;
  final Function()? cancelPressed;
  final bool needPop;

  const AlertDialogContinueCancel(
      {Key? key,
      required this.description,
      required this.onPressed,
      this.cancelPressed,
      this.continueButtonText = 'Да',
      this.cancelButtonText = 'Нет',
      required this.title,
      this.needPop = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsPadding: EdgeInsets.only(right: 10.0),
      title: Text(title, style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color)),
      content: Text(description, style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color)),
      actionsOverflowButtonSpacing: 30.0,
      actions: [
        TextButton(
          child: Text(cancelButtonText, style: TextStyle(color: Theme.of(context).backgroundColor)),
          onPressed: () {
            if (cancelPressed == null) {
              Navigator.of(context).pop();
            } else {
              cancelPressed!();
            }
          },
        ),
        TextButton(
          child: Text(continueButtonText, style: TextStyle(color: Theme.of(context).backgroundColor)),
          onPressed: () {
            if (needPop) {
              Navigator.of(context).pop();
            }
            onPressed();
          },
        ),
      ],
    );
  }
}
