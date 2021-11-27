import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  final IconData icon;
  final double? size;
  final Color? color;
  final bool enabledFeedback;
  final double angle;

  const AnimatedButton(this.icon, {Key? key, this.size, this.color, this.enabledFeedback = true, this.angle = 1}) : super(key: key);

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2))..repeat();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedBuilder(
        animation: _controller!,
        builder: (_, child) {
          return Transform.rotate(
            angle: _controller!.value * this.widget.angle * math.pi,
            child: child,
          );
        },
        child: IconButton(
          enableFeedback: this.widget.enabledFeedback,
          icon: Icon(this.widget.icon, size: this.widget.size, color: this.widget.color),
          disabledColor: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }
}
