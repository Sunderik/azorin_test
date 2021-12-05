import 'package:azorin_test/core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation.dart';

class TeamMemberDetails extends StatelessWidget {
  final User user;

  const TeamMemberDetails({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (BuildContext context) => UserDetailsBloc(user)..init(),
      dispose: (BuildContext context, BaseBloc bloc) => bloc.dispose(),
      child: const UserDetailsView(),
    );
  }
}
