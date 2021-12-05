import 'package:flutter/material.dart';

class TeamMemberDetailsBodyItem extends StatelessWidget {
  final Icon icon;
  final Widget description;
  final Function()? onTap;

  const TeamMemberDetailsBodyItem({
    Key? key,
    required this.icon,
    required this.description,
    this.onTap,
  }) : super(key: key);

  static const _divider = Divider(
    color: Color.fromRGBO(231, 231, 231, 1.0),
    thickness: 1.0,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 25,
            height: 25,
            child: Align(
              alignment: Alignment.center,
              child: icon,
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    description,
                    _divider,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
