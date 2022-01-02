import 'package:azorin_test/app_starter.dart';
import 'package:azorin_test/injection.dart';
import 'package:azorin_test/test_app.dart';
import 'package:flutter/material.dart';
///
Future<void> main() async {
  configureInjection(Env.prod);
  await startApp();
  runApp(const TestApp());
}
