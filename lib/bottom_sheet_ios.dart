import 'package:flutter/material.dart';

void showIosBottomSheet({
  required BuildContext context,
  
}) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return SizedBox(
        width: 350,
        height: 210,
        child: Column(
          children: [
            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: const Color.fromARGB(255, 192, 190, 190),
                          width: 0.5,
                        ),
                      ),
              
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text("The title " , style: TextStyle(color: const Color.fromARGB(255, 121, 121, 121), fontWeight: FontWeight.w700),),
                    Text("The message", style: TextStyle(color: const Color.fromARGB(255, 131, 130, 130), fontWeight: FontWeight.w100))
                  ],
                ),
              ),
            ),
             Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: const Color.fromARGB(255, 192, 190, 190),
                          width: 0.5,
                        ),
                      ),
              
              ),
              child: Center(
                child: 
                    Text("Default Action", style: TextStyle(color: const Color.fromARGB(255, 25, 134, 224), fontWeight: FontWeight.w600 , fontSize: 15))
                  
                ),
              ),
                Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: const Color.fromARGB(255, 192, 190, 190),
                          width: 0.5,
                        ),
                      ),
              
              ),
              child: Center(
                child: 
                    Text(" Action", style: TextStyle(color: const Color.fromARGB(255, 25, 134, 224), fontWeight: FontWeight.w500 , fontSize: 15))
                  
                ),
              ),
                Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: const Color.fromARGB(255, 192, 190, 190),
                          width: 0.5,
                        ),
                      ),
              
              ),
              child: Center(
                child: 
                    Text("Destructive Action", style: TextStyle(color: const Color.fromARGB(255, 209, 21, 21), fontWeight: FontWeight.w600 , fontSize: 15))
                  
                ),
              ),
            
          ],
        ),
      );
    },
  );
}