import 'package:flutter/cupertino.dart';

void showIosDatePicker({
  required BuildContext context,
  required Function(String) onDateSelected,
}) {
  showCupertinoDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: Text("Select Date"),
        content: SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: DateTime.now(),
            onDateTimeChanged: (DateTime value) {
              onDateSelected(
                 "${value.day}/${value.month}/${value.year}",
              );
            },
          ),
        ),
        actions: [
          CupertinoDialogAction( child: Text("Done"), onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}