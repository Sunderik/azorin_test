import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';
///
final injector = GetIt.instance;
///
@injectableInit
Future<void> configureInjection(String environment) async {
  injector.registerFactory(() => Client());
  await $initGetIt(injector, environment: environment);
}

abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
}
