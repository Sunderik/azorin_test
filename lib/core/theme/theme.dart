import 'package:flutter/material.dart';
import 'package:tecon_task/core/theme/colors.dart';
import 'package:tecon_task/core/theme/input_decorations.dart';

export 'package:tecon_task/core/theme/colors.dart';
export 'package:tecon_task/core/theme/text_styles.dart';

ThemeData darkTheme(context) {
  return ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.blue,
    primaryColor: Colors.black,
    errorColor: errorColor,
    accentColor: Colors.cyan,
    disabledColor: Colors.grey,
    dividerColor: Colors.transparent,
    cardColor: Color(0xff1f2124),
    canvasColor: Colors.black,
    brightness: Brightness.dark,
    buttonTheme: Theme.of(context)
        .buttonTheme
        .copyWith(colorScheme: ColorScheme.dark(), buttonColor: Colors.blue, splashColor: Colors.black),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );
}

ThemeData lightTheme(context) {
  return ThemeData(
    hintColor: Colors.grey,
    fontFamily: 'Roboto',
    primarySwatch: mainBlueMaterialColor,
    accentColor: Colors.blue,
    disabledColor: Colors.grey,
    cardColor: Colors.white,
    canvasColor: Colors.white,
    dividerColor: Colors.transparent,
    brightness: Brightness.light,
    backgroundColor: mainBlue,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: ColorScheme.light(),
        buttonColor: mainBlue,
        textTheme: ButtonTextTheme.primary,
        splashColor: Colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(animationDuration: Duration(seconds: 1))),
    appBarTheme: AppBarTheme(
      backgroundColor: mainBlue,
      elevation: 4.0,
    ),
    textTheme: Theme.of(context).textTheme.copyWith(
          bodyText1: TextStyle(color: darkText, fontFamily: "Roboto", fontSize: 16),
          bodyText2: TextStyle(color: mainBlue, fontFamily: "Roboto", fontSize: 18, fontWeight: FontWeight.w600),
          headline6: TextStyle(color: Colors.white, fontFamily: "Roboto", fontSize: 24),
          subtitle1: TextStyle(color: darkGrey, fontFamily: "Roboto", fontSize: 14),
        ),
    inputDecorationTheme: lightInputDecorationTheme,
  );
}
