import 'package:azorin_test/core/core.dart';

class TeamMemberDesignEngineerDetailsEndpoint implements Endpoint {
  final String? employeeGuid;
  final String? factoryGuid;

  TeamMemberDesignEngineerDetailsEndpoint(this.employeeGuid, this.factoryGuid);

  @override
  Uri create() {
    final Map<String, String?> params = {
      'guid': employeeGuid,
      'factoryGuid': factoryGuid,
    };
     return Uri.https(Urls.managerUrl, Urls.teamMemberDesignEngineer, params);
  }
}
