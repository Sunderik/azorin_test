import 'package:flutter/material.dart';

/// Возвращает блок с загругленными краями
class TeamMemberDetailsBox extends StatelessWidget {
  final Color color;
  final Widget child;

  const TeamMemberDetailsBox({
    Key? key,
    this.color = Colors.grey,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      final width = constraints.maxWidth;
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Color.fromRGBO(250, 250, 250, 1.0),
        ),
        width: width,
        child: child,
      );
    });
  }
}
