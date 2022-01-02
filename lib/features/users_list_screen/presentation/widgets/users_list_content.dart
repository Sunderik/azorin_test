import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/features/users_list_screen/presentation/users_list_screen_bloc.dart';
import 'package:azorin_test/features/users_list_screen/presentation/widgets/users_list_item.dart';
///
class TeamListContent extends StatefulWidget {
  const TeamListContent({Key? key}) : super(key: key);

  @override
  _TeamListContentState createState() => _TeamListContentState();
}
///
class _TeamListContentState extends State<TeamListContent> {
  ///
  UsersListScreenBloc get bloc => Provider.of<UsersListScreenBloc>(context, listen: false);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<BuiltList<User>>(
        stream: bloc.usersController.stream,
        builder: (context, snapshot) {
          final users = bloc.users;
          return ListView.builder(
              itemCount: users?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                return TeamListItem(user: users![index], onTap: () => {bloc.openUserInfo(users[index])});
              });
        });
  }
}
