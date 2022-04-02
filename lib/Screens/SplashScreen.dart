import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Constant/AppColor.dart';
import 'package:untitled/Screens/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // SizedBox(
          //   height: 70.h,
          // ),
          // Text("Learn anything \n frome home",style: GoogleFonts.aclonica(fontSize: 35,color: Colors.white),),
          // SizedBox(
          //   height: 20.h,
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: Text('Browse Over 5000 different cources Online at you pwn pace.',style: GoogleFonts.acme(fontSize: 20,color: Colors.white),),
          // ),
          // SizedBox(
          //   height: 60.h,
          // ),
          SizedBox(
            height: 50.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 250.h,
                width: 250.h,
                child: Image.asset(
                  'assets/images/splash_logo.png',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 35.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 70.w,
              ),
              Image.asset('assets/images/online_text.png'),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 120.w,
              ),
              Image.asset('assets/images/learning_text.png'),
            ],
          ),
          SizedBox(
            height: 220.h,
          ),
          Text(
            "Softs Solution",
            style: GoogleFonts.alike(fontSize: 30, color: Colors.blue[500]),
          )
        ],
      ),
    );
  }
}
