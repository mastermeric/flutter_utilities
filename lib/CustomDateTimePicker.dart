import 'package:flutter/material.dart';

class CustomDateTimePicker extends StatefulWidget {
  @override
  _CustomDateTimePickerState createState() => _CustomDateTimePickerState();
}

class _CustomDateTimePickerState extends State<CustomDateTimePicker> {
  DateTime? pickedDate;
  TimeOfDay? pickedTime;

  @override
  void initState() {
    super.initState();

    pickedDate = DateTime.now();
    pickedTime = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("--- DateTimePicker ---")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(pickedDate!.year.toString() +"-" + pickedDate!.month.toString() +"-" +pickedDate!.day.toString()),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: () {
                pickDateFunc();
              },
            ),
            ListTile(
              title: Text(pickedTime!.hour.toString() +"-" + pickedTime!.minute.toString()),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: () {
                pickTimeFunc();
              },
            )
          ],
        ));
  }

  pickDateFunc() async {
    DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 50),
      lastDate: DateTime(DateTime.now().year + 50),
    );

    if (date != null) {
      setState(() {
        pickedDate = date;
      });
    }
  }

  pickTimeFunc() async {
    TimeOfDay? date = await showTimePicker(
      context: context,
      initialTime: pickedTime!,
    );

    if (date != null) {
      setState(() {
        pickedTime = date;
      });
    }
  }
}
