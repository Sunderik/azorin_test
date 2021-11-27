import 'package:flutter/material.dart';
import 'package:tecon_task/core/theme/colors.dart';

const InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  alignLabelWithHint: true,
  floatingLabelBehavior: FloatingLabelBehavior.auto,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(6.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: mainBlue,
      width: 1.5,
    ),
    borderRadius: const BorderRadius.all(Radius.circular(6.0)),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: errorColor,
      width: 1.5,
    ),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: errorColor,
      width: 1.5,
    ),
  ),
);
