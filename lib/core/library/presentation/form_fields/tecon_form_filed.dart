import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tecon_task/core/theme/theme.dart';

class TeconTextFormField extends StatefulWidget {
  final String? text;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final String? label;
  final String? hint;
  final int lines;
  final int? maxLength;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final Icon? icon;
  final bool readOnly;
  final FormFieldValidator<String>? validator;
  final void Function(String?)? onFieldSubmitted;
  final List<TextInputFormatter>? inputFormatters;

  TeconTextFormField({
    Key? key,
    this.text,
    this.onChanged,
    this.onTap,
    this.label,
    this.hint,
    this.lines = 1,
    this.maxLength,
    this.controller,
    this.keyboardType = TextInputType.multiline,
    this.textInputAction,
    this.focusNode,
    this.icon,
    this.readOnly = false,
    this.validator,
    this.onFieldSubmitted,
    this.inputFormatters,
  })  : assert(lines >= 1),
        super(key: key);

  @override
  _TeconTextFormFieldState createState() => _TeconTextFormFieldState();
}

class _TeconTextFormFieldState extends State<TeconTextFormField> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(text: widget.text ?? '');
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  @override
  void didUpdateWidget(TeconTextFormField oldWidget) {
    super.didUpdateWidget(oldWidget);
    textEditingController = TextEditingController(text: widget.text ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 16.0),
            child: widget.icon,
          ),
        ),
        TextFormField(
          maxLength: widget.maxLength,
          controller: textEditingController,
          textCapitalization: TextCapitalization.sentences,
          inputFormatters: widget.inputFormatters,
          onTap: widget.onTap,
          keyboardType: widget.keyboardType,
          minLines: this.widget.lines,
          maxLines: this.widget.lines,
          textInputAction: widget.textInputAction ?? TextInputAction.done,
          focusNode: widget.focusNode,
          onFieldSubmitted: widget.onFieldSubmitted,
          style: TextStyle(color: darkText),
          decoration: InputDecoration(
            labelText: widget.label,
            hintText: widget.hint ?? widget.label,
            suffixIcon: widget.icon != null ? SizedBox(width: 10) : null,
          ),
          validator: widget.validator,
          onChanged: (String value) {
            widget.onChanged!(value);
          },
          readOnly: widget.readOnly,
        ),
      ],
    );
  }
}
