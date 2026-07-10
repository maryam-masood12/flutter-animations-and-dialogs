import 'package:flutter/material.dart';

class CustomIosButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final String subtitle;
  final VoidCallback onTap;

  const CustomIosButton({
    super.key,
    required this.text,
    required this.subtitle,
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
          backgroundColor:   Colors.cyan,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 5,
        ),
        child: Column(
          children: [
            Row(children: [
              SizedBox(width: 10,),
              Icon(icon),
              SizedBox(width: 40,),
              Text(text),
              SizedBox(width: 50,),
              Icon(Icons.arrow_forward_ios),
            ],),

            Text(subtitle , style: TextStyle(fontSize: 12),),


          ],
        )
      ),
    );
  }
}