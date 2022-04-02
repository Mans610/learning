import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(
     //designSize: Size(375, 770),
     builder: () => MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(

         appBarTheme: AppBarTheme(
          // backgroundColor: Secondary.darker,
           toolbarHeight: 56.h,
           elevation: 0.0,
           shape: const RoundedRectangleBorder(),
           centerTitle: false,
           textTheme: const TextTheme(),
           titleTextStyle: GoogleFonts.workSans(
             fontSize: 20.sp,
             fontWeight: FontWeight.w500,
             color: const Color(0xFFFFFFFF),
           ),
         ),
         textTheme: GoogleFonts.workSansTextTheme(),
         primarySwatch: Colors.blue,
       ),
       home: SplashScreen(),
     ),
   );

  }
}

