import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MailSendDialog extends StatefulWidget {
  final String title;
  final String email;
  final Function(String) onEmailSend;

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;

  MailSendDialog({
    required this.title,
    required this.email,
    required this.onEmailSend,
  });

  @override
  _MailSendDialogState createState() => _MailSendDialogState();
}

class _MailSendDialogState extends State<MailSendDialog> {
  final _formKey = GlobalKey<FormState>();

  FocusNode _emailFocusNode = FocusNode();

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final TextStyle btnStyle = Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(color: Theme.of(context).backgroundColor);
    this._textEditingController.text = widget.email;

    return AlertDialog(
      title: Text(
        widget.title,
        style: TextStyle(
            fontSize: 22.0, fontWeight: FontWeight.w700, color: Colors.black),
      ),
      content: Form(
        key: _formKey,
        child: TextFormField(
          style: TextStyle(color: Theme.of(context).backgroundColor),
          initialValue: this.widget.email,
          focusNode: _emailFocusNode,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Почта получателя",
            hintText: "example@mail.ru",
          ),
          textInputAction: TextInputAction.next,
          validator: (email) => EmailValidator.validate(email!)
              ? null
              : "Неверно указан адрес электронной почты",
          onChanged: (value) {
            this._textEditingController.text = value;
          },
        ),
      ),
      actions: [
        TextButton(
          child: Text('Отправить', style: btnStyle),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              widget.onEmailSend(this._textEditingController.text);
            }
          },
        ),
        TextButton(
          child: Text('Отменить', style: btnStyle),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
