import 'package:flutter/material.dart';

void showAndriodBottomSheet({
  required BuildContext context,
}) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return SizedBox(
        width: 280,
        height: 190,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 40,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green

                ),
              ),
            ),

            SizedBox(height: 20,),


            Row(children: [
              SizedBox(width: 25, ),
              Text("Create" , style: TextStyle(fontSize: 20, color: Colors.green , fontWeight: FontWeight.w600),),
              SizedBox(width: 160,),
              Icon(Icons.close , color: Colors.green,)

            ],),

           SizedBox(height: 18,),

             Row(children: [
              SizedBox(width: 15),
               Icon(Icons.upload , color: Colors.green, size: 20,),
              SizedBox(width: 20,),
               Text("Upload a video" , style: TextStyle(fontSize: 15, color: Colors.green , ),),
            

            ],),

             SizedBox(height: 10,),

             Row(children: [
              SizedBox(width: 15),
               Icon(Icons.local_fire_department , color: Colors.green, size: 20,),
              SizedBox(width: 20,),
               Text("Create a short" , style: TextStyle(fontSize: 15, color: Colors.green , ),),
            

            ],),

             SizedBox(height: 10,),

             Row(children: [
              SizedBox(width: 15),
               Icon(Icons.vibration , color: Colors.green, size: 20,),
              SizedBox(width: 20,),
               Text("Go live" , style: TextStyle(fontSize: 15, color: Colors.green , ),),
            

            ],),
          ],
        ),
      );
    },
  );
}