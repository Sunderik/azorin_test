import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ExpandableText extends StatefulWidget {
  final TextSpan textSpan;
  final TextSpan moreSpan;
  final int maxLines;

  const ExpandableText({
    Key? key,
    required this.textSpan,
    required this.maxLines,
    required this.moreSpan,
  }) : super(key: key);

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  static const String _ellipsis = "\u2026\u0020"; // Unicode symbols for "… "

  bool _isExpanded = false;

  String get _lineEnding => "$_ellipsis${widget.moreSpan.text}";

  GestureRecognizer get _tapRecognizer => TapGestureRecognizer()
    ..onTap = () {
      setState(() {
        _isExpanded = !_isExpanded;
      });
    };

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxLines = widget.maxLines;

        final richText = Text.rich(widget.textSpan).build(context) as RichText;
        final boxes = richText.measure(context, constraints);

        if (boxes.length <= maxLines || _isExpanded) {
          return RichText(text: widget.textSpan);
        } else {
          final croppedText = _ellipsizeText(boxes);
          final ellipsizedText = _buildEllipsizedText(croppedText, _tapRecognizer);

          if (ellipsizedText.measure(context, constraints).length <= maxLines) {
            return ellipsizedText;
          } else {
            final fixedEllipsizedText = croppedText.substring(0, croppedText.length - _lineEnding.length);
            return GestureDetector(
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: _buildEllipsizedText(fixedEllipsizedText, _tapRecognizer));
          }
        }
      },
    );
  }

  String _ellipsizeText(List<TextBox> boxes) {
    final text = widget.textSpan.text;
    final int maxLines = widget.maxLines;

    double _calculateLinesLength(List<TextBox> boxes) =>
        boxes.map((box) => box.right - box.left).reduce((acc, value) => acc += value);

    final requiredLength = _calculateLinesLength(boxes.sublist(0, maxLines));
    final totalLength = _calculateLinesLength(boxes);

    final requiredTextFraction = requiredLength / totalLength;
    if (text != null) {
      return text.substring(0, (text.length * requiredTextFraction).floor());
    }
    throw new Exception('text is null');
  }

  RichText _buildEllipsizedText(String text, GestureRecognizer tapRecognizer) => RichText(
        text: TextSpan(
          text: "$text$_ellipsis",
          style: widget.textSpan.style,
          children: [widget.moreSpan],
        ),
      );
}

extension _TextMeasurer on RichText {
  List<TextBox> measure(BuildContext context, Constraints constraints) {
    final renderObject = createRenderObject(context)..layout(constraints);
    return renderObject.getBoxesForSelection(
      TextSelection(
        baseOffset: 0,
        extentOffset: text.toPlainText().length,
      ),
    );
  }
}
