import 'package:date_range_form_field/date_range_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class DateRangeForm extends StatefulWidget {
  /// Первая доступная дата.
  DateTime firstDate;

  /// Последняя доступная дата.
  DateTime lastDate;

  /// Валидатор.
  final String? Function(DateTimeRange?) validator;

  DateRangeForm({required this.firstDate, required this.lastDate, required this.validator}) {
    firstDate = DateUtils.dateOnly(firstDate);
    lastDate = DateUtils.dateOnly(lastDate);
    assert(
      !lastDate.isBefore(firstDate),
      'lastDate $lastDate должен быть позднее firstDate $firstDate.',
    );
  }

  @override
  _DateRangeFormState createState() => _DateRangeFormState();
}

class _DateRangeFormState extends State<DateRangeForm> {
  late DateTimeRange myDateRange;

  @override
  Widget build(BuildContext context) {
    final DateTime today = DateTime.now();

    return DateRangeField(
      margin: EdgeInsets.zero,
      firstDate: this.widget.firstDate,
      currentDate: today,
      decoration: inputDecoration(context: context).copyWith(
        labelText: 'Дата',
        prefixIcon: Icon(Icons.date_range),
        hintText: 'Выберите диапазон дат',
      ),
      dateFormat: DateFormat('dd.MM.yyyy'),
      helpText: 'Выберите диапазон дат',
      saveText: 'Сохранить',
      validator: this.widget.validator,
      onSaved: (value) {
        setState(() {
          myDateRange = value!;
        });
      },
    );
  }
}

InputDecoration inputDecoration({required BuildContext context}) {
  var _color = Color(0xFF770FB7);
  return InputDecoration(
    alignLabelWithHint: true,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    helperStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: _color,
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(6),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).errorColor,
        width: 1.5,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).errorColor,
        width: 1.5,
      ),
    ),
  );
}
