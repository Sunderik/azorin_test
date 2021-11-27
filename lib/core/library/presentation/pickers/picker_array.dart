import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';

void showPickerArray(BuildContext context,
    {required String title, required Iterable<dynamic> list, required void Function(String) onPressed}) {
  new Picker(
    adapter: PickerDataAdapter<String>(
      pickerdata: list.toList(),
    ),
    hideHeader: false,
    height: 220.0,
    itemExtent: 36.0,
    builderHeader: (_) => Padding(
      padding: EdgeInsets.only(bottom: 0.0),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    ),
    textStyle: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w300,
      color: Color.fromRGBO(0, 0, 0, 0.59),
    ),
    selectedTextStyle: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    cancelTextStyle: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Theme.of(context).primaryColor,
    ),
    confirmTextStyle: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Theme.of(context).primaryColor,
    ),
    footer: Container(
      padding: EdgeInsets.only(top: 20.0),
    ),
    cancelText: 'ОТМЕНА',
    confirmText: 'ВЫБРАТЬ',
    headerColor: Colors.amber,
    containerColor: Colors.amber,
    onConfirm: (Picker picker, List value) {
      onPressed(picker.getSelectedValues().first);
    },
  ).showDialog(context);
}
