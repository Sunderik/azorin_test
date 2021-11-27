import 'package:flutter/material.dart';
import 'package:tecon_task/features/events_list/presentation/events_list.dart';

class NotificationsListDialog extends StatelessWidget {
  NotificationsListDialog();

  @override
  Widget build(BuildContext context) {
    // final localizations = AppLocalizations.of(context);
    return Dialog(
      insetPadding: EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 20),
      child: NotificationList(),
      elevation: 40,
    );
  }
}
