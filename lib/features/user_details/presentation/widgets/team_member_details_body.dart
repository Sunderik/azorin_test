import 'package:flutter/material.dart';
import 'package:azorin_test/features/user_details/presentation/presentation.dart';

class TeamMemberDetailsBody extends StatelessWidget {
  final List<TeamMemberDetailsBodyItem> bodyItems;

  const TeamMemberDetailsBody({Key? key, required this.bodyItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TeamMemberDetailsBox(
      child: Column(
        children: bodyItems,
      ),
    );
  }
}
