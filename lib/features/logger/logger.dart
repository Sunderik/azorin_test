import 'package:logger/logger.dart';

export 'domain/middlewares/logging_middleware.dart';

Logger logger = Logger(
  printer: PrettyPrinter(methodCount: 0, printTime: true),
);
