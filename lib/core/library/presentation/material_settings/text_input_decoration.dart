import 'package:flutter/material.dart';

InputDecoration textInputDecoration({required BuildContext context}) {
  var _color = Color(0xFF770FB7);
  return InputDecoration(
    alignLabelWithHint: true,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: _color,
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(6),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).errorColor,
        width: 1.5,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).errorColor,
        width: 1.5,
      ),
    ),
  );
}