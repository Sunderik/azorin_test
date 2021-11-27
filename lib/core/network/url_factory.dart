import 'package:injectable/injectable.dart';

abstract class Endpoint {
  Uri create();
}

abstract class UrlFactory {
  Uri createFor<T extends Endpoint>(T endpoint);
}

@Injectable(as: UrlFactory)
class UrlAbstractFactory implements UrlFactory {
  @override
  Uri createFor<T extends Endpoint>(T endpoint) {
    return endpoint.create();
  }
}
