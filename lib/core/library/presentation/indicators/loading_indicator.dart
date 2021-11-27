import 'dart:math' as math;
import 'package:flutter/material.dart';

class LoadingIndicator extends StatefulWidget {
  final Color? circleColor;
  final Color? spinnerColor;
  final bool? isWidget;
  final String title;

  LoadingIndicator(
      {required this.title,
      this.circleColor = const Color(0xeeeeee),
      this.spinnerColor = Colors.blueAccent,
      this.isWidget = false});

  @override
  _LoadingIndicatorState createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween(begin: 1.0, end: 1.2).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _widget = AnimatedBuilder(
        animation: _controller,
        builder: (context, widget) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: _controller.status == AnimationStatus.forward
                      ? (math.pi * 2) * _controller.value
                      : -(math.pi * 2) * _controller.value,
                  child: Container(
                    height: 90.0,
                    width: 90.0,
                    child: CustomPaint(
                      painter: LoaderCanvas(
                          circleColor: this.widget.circleColor!,
                          spinnerColor: this.widget.spinnerColor!,
                          radius: _animation.value*0.8),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          this.widget.title,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
    if (widget.isWidget!) {
      return _widget;
    } else {
      return Container(
        height: double.infinity,
        child: Center(child: _widget),
      );
    }
  }
}

class LoaderCanvas extends CustomPainter {
  Color circleColor;
  Color spinnerColor;
  double radius;

  LoaderCanvas({required this.circleColor, required this.spinnerColor, required this.radius});

  @override
  void paint(Canvas canvas, Size size) {
    Paint _arc = Paint()
      ..color = this.spinnerColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    Paint _circle = Paint()
      ..color = this.circleColor
      ..style = PaintingStyle.fill;

    Offset _center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(_center, size.width / 2, _circle);
    canvas.drawArc(Rect.fromCenter(center: _center, width: size.width * radius, height: size.height * radius),
        math.pi / 4, math.pi / 2, false, _arc);
    canvas.drawArc(Rect.fromCenter(center: _center, width: size.width * radius, height: size.height * radius),
        -math.pi / 4, -math.pi / 2, false, _arc);
  }

  @override
  bool shouldRepaint(LoaderCanvas oldPaint) {
    return true;
  }
}
