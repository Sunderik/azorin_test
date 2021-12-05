import 'package:flutter/material.dart';

class TeamMemberDetailsButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function() onPressed;
  final double fontSize;
  final double buttonWidth;

  const TeamMemberDetailsButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed,
    required this.buttonWidth,
    this.fontSize = 17.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 4.0,
        primary: color,
      ),
      child: Container(
        width: buttonWidth,
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize),
          textAlign: TextAlign.center,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
