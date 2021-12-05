import 'package:flutter/material.dart';
import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/core/domain/objects/extension/string_extension.dart';

class TeamMemberDetailsWorkplace extends StatelessWidget {
  final String? workplaceGuid;

  TeamMemberDetailsWorkplace({Key? key, this.workplaceGuid}) : super(key: key);

  /// Перечисление мест работы.
  final CommonEnum? _workplaceEnum = CollectionEnums.getCommonEnumByGuid(CollectionEnums.workplace.guid);

  CommonEnumItem? _getWorkplace(String? guid) {
    return _workplaceEnum?.getCommonEnumItemByGuid(guid);
  }

  Color _getWorkplaceColor(CommonEnumItem? workplaceEnumItem) {
    return workplaceEnumItem?.color?.hexToColor() ?? Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    final String? workplaceGuid = this.workplaceGuid;
    if (workplaceGuid != null) {
      final CommonEnumItem? workplaceEnum = _getWorkplace(workplaceGuid);
      final Color workplaceColor = _getWorkplaceColor(workplaceEnum);
      final String workplaceName = workplaceEnum?.fullName ?? '';

      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          decoration: BoxDecoration(color: workplaceColor, borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Text(
            workplaceName,
            style: TextStyle(fontSize: 14.0, color: Color.fromRGBO(91, 91, 91, 1.0)),
          ),
        ),
      );
    } else {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
      );
    }
  }
}
