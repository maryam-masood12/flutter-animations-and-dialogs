import 'package:flutter/cupertino.dart';

void showIosTimePicker({
  required BuildContext context,
  required Function(String) onTimeSelected,
}) {
  showCupertinoDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: Text("Select Time"),
        content: SizedBox(
          height: 150,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.time,
            initialDateTime: DateTime.now(),
            onDateTimeChanged: (DateTime value) {
              onTimeSelected(
                "${value.hour}:${value.minute}",
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