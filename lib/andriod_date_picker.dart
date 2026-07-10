import 'package:flutter/material.dart';

void showAndroidDatePicker(
    BuildContext context,
  Function(String) onDateSelected,
) async {
  final DateTime? pickedDate = await showDatePicker(
    context: context,
    barrierDismissible: false,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
  );
    if (pickedDate != null) {
      onDateSelected(
      "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}",
    );
               };
                 }

  
