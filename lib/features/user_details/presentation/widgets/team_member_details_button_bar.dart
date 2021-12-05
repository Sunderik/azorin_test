import 'package:flutter/material.dart';
import 'package:azorin_test/features/user_details/presentation/presentation.dart';

class TeamMemberDetailsButtonBar extends StatelessWidget {
  final List<TeamMemberDetailsButton> buttons;

  const TeamMemberDetailsButtonBar({Key? key, required this.buttons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      buttonHeight: 42.0,
      buttonMinWidth: MediaQuery.of(context).size.width / 2.3,
      buttonPadding: EdgeInsets.symmetric(horizontal: 10.0),
      mainAxisSize: MainAxisSize.min,
      children: buttons,
    );
  }
}
