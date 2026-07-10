import 'package:flutter/material.dart';

class CustomIosButtomSheetButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  const CustomIosButtomSheetButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 5,
        ),
        child: Row(children: [
          SizedBox(width: 10,),
          Icon(icon),
          SizedBox(width: 10,),
          Text(text),
          SizedBox(width: 70,),
          Icon(Icons.arrow_forward_ios),
        ],)
      ),
    );
  }
}