import 'package:azorin_test/core/core.dart';

class TeamMemberInfoEndpoint implements Endpoint {
  final String employeeId;

  TeamMemberInfoEndpoint(this.employeeId);

  @override
  Uri create() {
    final Map<String, String> params = {
      "guid": employeeId,
    };
     return Uri.https(Urls.managerUrl, Urls.member, params);
  }
}
