import 'package:flutter/material.dart';
import 'package:flutter_dialogs/andriod_date_picker.dart';
import 'package:flutter_dialogs/andriod_time_picker.dart';
import 'package:flutter_dialogs/bottom_sheet_andriod.dart';
import 'package:flutter_dialogs/bottom_sheet_ios.dart';
import 'package:flutter_dialogs/custom_andriod_bottom_sheet_button.dart';
import 'package:flutter_dialogs/custom_andriod_button.dart';
import 'package:flutter_dialogs/custom_ios_bottom_sheet.dart';
import 'package:flutter_dialogs/custom_ios_button.dart';
import 'package:flutter_dialogs/ios_date_picker.dart';
import 'package:flutter_dialogs/ios_time_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>with SingleTickerProviderStateMixin {
  String selectedTime = ".....";
  String selectedTimeIos = ".....";

  String selectedDate = ".....";
  String selectedDateIos = ".....";

  late AnimationController controller;

  late Animation<Offset> textAnimation;
  late Animation<double> imageAnimation;
  late Animation<Offset> column_1Animation;
  late Animation<Offset> column_2Animation;


 @override
  void initState() {
    controller = AnimationController(vsync: this,duration: Duration(seconds: 2));

    textAnimation = Tween<Offset>(begin: Offset(0, -1), end: Offset(0, 0)).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));
    column_1Animation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));
    column_2Animation = Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0)).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

   imageAnimation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));
    super.initState();
    startAnimation();
  }

  @override
  void dispose() {
   controller.dispose();
    super.dispose();
  }

  void startAnimation(){
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
 
    
    return Scaffold(
      backgroundColor: Colors.white,
     
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),

            AnimatedBuilder(animation: controller,builder: (context, child) =>SlideTransition(position: textAnimation , child:  Text("Andriod & iOS Pickers" , style: TextStyle(color: Colors.black , fontSize: 30,fontWeight: FontWeight.w900),),),),
             

             Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                AnimatedBuilder(animation: controller,builder: (context, child) => SlideTransition(position: column_1Animation, child: 
                   Column(
                  children: [
                    SizedBox(height: 150,),
                    Text("Andriod Style" ,  style: TextStyle(color: const Color.fromARGB(255, 43, 44, 43) , fontSize: 25,fontWeight: FontWeight.w600)),
                    
                    SizedBox(height: 40,),
                    CustomAndroidButton(icon: Icons.calendar_month_outlined, text: "Date Picker", onTap: (){
                       showAndroidDatePicker(
                       context,
                         (value) {
                         setState(() {
                        selectedDate = value;
                                 });
                                  },
                                );
                    }, 
                    subtitle: "Selected Date : $selectedDate",),
                  
                     SizedBox(height: 20,),
                    CustomAndroidButton(icon: Icons.access_time, text: "Time Picker", onTap: (){
                      showAndroidTimePicker(
                           context,
                            (value) {
                          setState(() {
                            selectedTime = value;
                                });
                               },
                            );
                    }, subtitle: "Selected Time : $selectedTime"  ),
                  
                     SizedBox(height: 20,),
                    CustomAndroidBottomSheetButton(icon: Icons.vertical_align_bottom, text: "Bottom sheet", onTap: (){
                       showAndriodBottomSheet(
                       context: context,
                           );
                    } ,)
                  
                  
                  ],
                  ),
                ),),

            AnimatedBuilder(animation: controller,builder: (context, child) => Opacity(opacity: imageAnimation.value,child: child,),
              child: SizedBox(
                width: 300,
                height: 300,
                child: Image.asset("assets/images/logo.gif")),
            ),

               AnimatedBuilder(animation: controller, builder: (context, child) => SlideTransition(position: column_2Animation,
                 child: Column(
                  children: [
                     SizedBox(height: 150,),
                 
                    Text("IOS Style"  ,style: TextStyle(color: const Color.fromARGB(255, 44, 43, 43) , fontSize: 25,fontWeight: FontWeight.w600)),
                    
                    SizedBox(height: 40,),
                    CustomIosButton(icon: Icons.calendar_month_outlined, text: "Date Picker", onTap: (){
                      
                       showIosDatePicker(
                        context: context,
                        onDateSelected: (value) {
                         setState(() {
                         selectedDateIos = value;
                           });
                         },
                         );
                    }, subtitle: "Selected Date : $selectedDateIos"),
                 
                     SizedBox(height: 20,),
                     CustomIosButton(icon: Icons.access_time, text: "Time Picker", onTap: (){
                 
                      showIosTimePicker(
                        context: context,
                        onTimeSelected: (value) {
                         setState(() {
                         selectedTimeIos = value;
                           });
                         },
                         );
                       
                    
                     },subtitle: "Selected Time : $selectedTimeIos"
                     ),
                 
                     SizedBox(height: 20,),
                      CustomIosButtomSheetButton(icon: Icons.vertical_align_bottom, text: "Bottom Sheet", onTap: (){
                        showIosBottomSheet(context: context,);
                       
                      }),
                 
                  ],
                  ),
               ),),

                    ],)
              
          ],


        ),
        
      ),
      
        
        
      
    );
  }
}
