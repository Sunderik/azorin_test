import 'package:flutter/material.dart';
import 'package:azorin_test/features/user_details/presentation/presentation.dart';

/// Виджет отрисовывающий иконку, фамилию, имя, отчество и дополнительную информацию.
class TeamMemberDetailsHeader extends StatelessWidget {
  final Image image;
  final String surname;
  final String name;
  final String patronymic;
  final Widget bottom;

  /// Поле [isAbsent] при значении true окрашивает фон [image].
  final bool isAbsent;

  const TeamMemberDetailsHeader({
    Key? key,
    required this.image,
    required this.name,
    required this.surname,
    required this.patronymic,
    required this.bottom,
    required this.isAbsent,
  }) : super(key: key);

  static const _imageSize = 56.0;

  static const _nameTextStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
    height: 1.25,
    letterSpacing: 0.5,
    color: Colors.black,
  );

  static const _divider = Divider(
    indent: 17.0,
    endIndent: 17.0,
    color: Color.fromRGBO(231, 231, 231, 1.0),
    thickness: 1.0,
  );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: _imageSize / 2),
            child: TeamMemberDetailsBox(
              child: Padding(
                padding: const EdgeInsets.only(top: _imageSize / 2, bottom: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      surname,
                      style: _nameTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '$name $patronymic'.trim(),
                      style: _nameTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    _divider,
                    bottom
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: _imageSize, height: _imageSize),
              child: isAbsent
                  ? Container(
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red[300],
                      ),
                      child: image,
                    )
                  : image,
            ),
          ),
        ],
      );
    });
  }
}
