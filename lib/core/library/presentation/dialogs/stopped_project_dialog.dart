import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/core/di/provider/store_provider.dart';
import 'package:tecon_task/core/domain/actions/app_actions.dart';
import 'package:flutter/material.dart';
import 'package:tecon_task/injection.dart';
import 'package:collection/collection.dart';

class StoppedProjectDialog extends StatelessWidget {
  final String pageName;
  final StoreProvider _storeProvider = injector.get<StoreProvider>();

  AppActions? get actions => _storeProvider.store!.actions;

  AppState? get states => _storeProvider.store!.state;

  StoppedProjectDialog({Key? key, required this.pageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsPadding: EdgeInsets.only(right: 10.0),
      contentPadding: EdgeInsets.all(10.0),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            text: TextSpan(
              text: 'Вы не можете работать с разделом ',
              style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color, fontSize: 16),
              children: <TextSpan>[
                TextSpan(text: pageName, style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ', так как проект остановлен.'),
              ],
            ),
          ),
          userIsCurator()
              ? Container()
              : Wrap(
                  children: [
                    Text(''),
                    RichText(
                      text: TextSpan(
                        text: 'Чтобы восстановить проект, обратитесь к куратору проекта',
                        style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color, fontSize: 16),
                      ),
                    ),
                  ],
                )
        ],
      ),
      actions: [
        TextButton(
          child: Text('OK', style: TextStyle(color: Theme.of(context).backgroundColor)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  bool userIsCurator() {
    String? currentProjectGuid = states?.projectsState.currentProject?.guid;
    if (currentProjectGuid == null) return false;
    final List<UserRole> roles =
        states!.userState.currentUser!.userRoles!.where((role) => role.project?.guid == currentProjectGuid).toList();
    final String? roleGuid = roles.firstWhereOrNull((role) => role.roleGuid == RoleEnum.curator.ids)?.roleGuid;
    return roleGuid != null;
  }
}
