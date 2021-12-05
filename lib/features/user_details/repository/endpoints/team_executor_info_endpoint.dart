import 'package:azorin_test/core/core.dart';

class TeamExecutorInfoEndpoint implements Endpoint {
  @override
  Uri create() {
     return Uri.https(Urls.managerUrl, Urls.projectExecutor);
  }
}
