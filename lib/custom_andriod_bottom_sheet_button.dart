import 'package:flutter/material.dart';

class CustomAndroidBottomSheetButton extends StatelessWidget {
  final String text;
  final IconData icon;
  
  final VoidCallback onTap;

  const CustomAndroidBottomSheetButton({
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
          backgroundColor: Colors.green,
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
          SizedBox(width: 40,),
          Text(text),
          SizedBox(width: 40,),
          Icon(Icons.arrow_forward_ios),
        ],)
      ),
    );
  }
}