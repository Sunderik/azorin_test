import 'package:flutter/material.dart';

class ProgressButton extends StatelessWidget {
  final Widget child;
  final bool isProgress;
  final Function onPressed;

  const ProgressButton({required this.child, required this.onPressed, required this.isProgress, final key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () => isProgress ? null : onPressed,
        child: isProgress
            ? Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      strokeWidth: 4,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                  child
                ],
              )
            : child,
      ),
    );
  }
}
