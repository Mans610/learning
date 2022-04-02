import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Screens/DashboardScreen.dart';
import 'package:untitled/Screens/SignupScreen.dart';

import 'VideoScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/loginpage_logo.png',
                  fit: BoxFit.fitWidth,
                )),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30.w,
                ),
                Text(
                  "Log in your Mobile \nNumber",
                  style: GoogleFonts.abhayaLibre(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30.w,
                ),
                Text(
                  "Mobile Number",
                  style: GoogleFonts.abhayaLibre(
                      fontSize: 23, fontWeight: FontWeight.w800),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 30),
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(5),
            //       border: Border.all(width: 1),
            //       color: Colors.grey[200]
            //     ),
            //     child: Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 20),
            //       child: TextFormField(
            //         decoration: InputDecoration(
            //           hintText: "Enter your Mobile Number",
            //           border: InputBorder.none
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                autofocus: false,
                cursorHeight: 20,
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  isDense: true,                      // Added this
                  contentPadding: EdgeInsets.symmetric(vertical: 17,horizontal: 20),
                  filled: true,
                  hintText: "Enter mobile number",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),

                ),
              ),
            ),
            SizedBox(
              height: 150.h,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const DashboardScreen()));
              },
              child: Container(
                height: 45.h,
                width: 220.w,
                decoration: BoxDecoration(
                  color: const Color(0XFF132E81),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(
                  child: Text("GET OTP",style: GoogleFonts.abhayaLibre(color: Colors.white,fontSize: 30),),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account yet? ",style: GoogleFonts.alike(fontSize: 12),),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupScreen()));
                    },
                    child: Text("create now",style: GoogleFonts.alike(fontSize: 12,decoration: TextDecoration.underline,color: Color(0XFF135A81), ),)),
              ],
            )
          ],
        ),
      ),
    );
  }

}
