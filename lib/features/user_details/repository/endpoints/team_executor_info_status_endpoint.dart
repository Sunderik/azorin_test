import 'package:azorin_test/core/core.dart';

class TeamExecutorInfoStatusEndpoint implements Endpoint {
  @override
  Uri create() {
    final uri =Uri.https(Urls.managerUrl, Urls.teamMemberStatus);
    return uri;
  }
}
