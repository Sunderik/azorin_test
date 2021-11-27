import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/widgets.dart';

class LinkSendDialog extends StatefulWidget {
  final String email;
  final Function(String) onEmailSend;

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;

  LinkSendDialog({
    required this.email,
    required this.onEmailSend,
  });

  @override
  _LinkSendDialogState createState() => _LinkSendDialogState();
}

class _LinkSendDialogState extends State<LinkSendDialog> {
  final _formKey = GlobalKey<FormState>();

  FocusNode _emailFocusNode = FocusNode();

  final txt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // return Dialog(
    //   elevation: 0.0,
    //   backgroundColor: Colors.transparent,
    //   child: dialogContent(context),
    // );
    final btnStyle = Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(color: Theme.of(context).backgroundColor);
    return AlertDialog(
      title: Text(
        "Отправить актуальную ссылку на проект ?",
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
            hintText: "abc@list.ru",
          ),
          textInputAction: TextInputAction.next,
          validator: (email) => EmailValidator.validate(email!)
              ? null
              : "Неверно указан адрес электронной почты",
          onChanged: (value) {
            this.txt.text = value;
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              widget.onEmailSend(this.txt.text);
            }
          },
          child: Text('Отправить', style: btnStyle),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // To close the dialog
          },
          child: Text('Отменить', style: btnStyle),
        ),
      ],
    );
  }

  Widget dialogContent(BuildContext context) {
    final btnStyle = Theme.of(context)
        .textTheme
        .bodyText1!
        .copyWith(color: Theme.of(context).backgroundColor);
    this.txt.text = this.widget.email;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: LinkSendDialog.padding,
              bottom: LinkSendDialog.padding,
              left: LinkSendDialog.padding,
              right: LinkSendDialog.padding,
            ),
            margin: EdgeInsets.only(top: LinkSendDialog.avatarRadius),
            decoration: new BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: const Offset(0.0, 10.0),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // To make the card compact
              children: <Widget>[
                Text(
                  "Отправить актуальную ссылку на проект ?",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        style:
                            TextStyle(color: Theme.of(context).backgroundColor),
                        initialValue: this.widget.email,
                        focusNode: _emailFocusNode,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Почта получателя",
                          hintText: "abc@list.ru",
                        ),
                        textInputAction: TextInputAction.next,
                        validator: (email) => EmailValidator.validate(email!)
                            ? null
                            : "Неверно указан адрес электронной почты",
                        onChanged: (value) {
                          this.txt.text = value;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.0),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            widget.onEmailSend(this.txt.text);
                          }
                        },
                        child: Text('Отправить', style: btnStyle),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // To close the dialog
                        },
                        child: Text('Отменить', style: btnStyle),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //...top circlular image part,
        ],
      ),
    );
  }
}
