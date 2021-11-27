import 'package:flutter/material.dart';

class TagWithTooltip extends StatefulWidget {
  final String text;
  final String tooltipMessage;

  const TagWithTooltip({
    Key? key,
    required this.text,
    required this.tooltipMessage,
  }) : super(key: key);

  @override
  _TagWithTooltipState createState() => _TagWithTooltipState();
}

class _TagWithTooltipState extends State<TagWithTooltip> {
  GlobalKey _toolTipKey = GlobalKey();

  void onTap() async {
    final dynamic tooltip = _toolTipKey.currentState;
    tooltip.ensureTooltipVisible();
    setState(() {
      primeColor = pressedTagColor;
    });
    Future.delayed(const Duration(milliseconds: 5000), () {
      if (mounted) {
        setState(() {
          primeColor = tagColor;
        });
        tooltip.deactivate();
      }
    });
  }

  late Color primeColor;
  final Color tagColor = Color.fromRGBO(22, 100, 167, 0.2);
  final Color pressedTagColor = Color.fromRGBO(102, 102, 102, 0.2);

  @override
  void initState() {
    super.initState();
    primeColor = tagColor;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Tooltip(
        key: _toolTipKey,
        message: widget.tooltipMessage,
        waitDuration: Duration(seconds: 2),
        child: Container(
          padding: const EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
          decoration: BoxDecoration(
            color: primeColor,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Text(
            widget.text,
            style: TextStyle(
              color: primeColor.withOpacity(0.5),
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
