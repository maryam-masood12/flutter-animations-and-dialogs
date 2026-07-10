import 'package:flutter/material.dart';

void showAndroidTimePicker(
    BuildContext context,
  Function(String) onTimeSelected,
) async {
  final TimeOfDay? picked = await showTimePicker(
    context: context,
    barrierDismissible: false,
    initialTime: TimeOfDay.now(),
  );

  if (picked != null) {
   onTimeSelected(
  "${picked.hour}:${picked.minute}",
);
  }
}