import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Screens/DashboardScreen.dart';
import 'package:untitled/Screens/LoginScreen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String dropdownvalue = 'Gujarat';
  var items = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jharkhand",
    "Karnataka	",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland	",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana"
  ];

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
                  'assets/images/signup_logo.png',
                  fit: BoxFit.fitWidth,
                )),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30.w,
                ),
                Text("Create now!",
                    style: GoogleFonts.abhayaLibre(
                        fontSize: 35, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                autofocus: false,
                cursorHeight: 20,
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  isDense: true,
                  // Added this
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                  filled: true,
                  hintText: "First Name",
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
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                autofocus: false,
                cursorHeight: 20,
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  isDense: true,
                  // Added this
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                  filled: true,
                  hintText: "Last Name",
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
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                autofocus: false,
                cursorHeight: 20,
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  isDense: true,
                  // Added this
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 17, horizontal: 20),
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
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                autofocus: false,
                cursorHeight: 20,
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  isDense: true,
                  // Added this
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                  filled: true,
                  hintText: "Enter Email",
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
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                  height: 45.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0XFF132E81),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isExpanded: true,
                        value: dropdownvalue,
                        hint: Text(
                          "Select State",
                          style: GoogleFonts.adamina(color: Colors.white),
                        ),dropdownColor: Color(0XFF132E81),
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            alignment: Alignment.center,
                            value: items,

                            child: Text(items,style: GoogleFonts.adamina(color: Colors.white),),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 15.h,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DashboardScreen()));
              },
              child: Container(
                height: 45.h,
                width: 220.w,
                decoration: BoxDecoration(
                    color: Color(0XFF132E81),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.abhayaLibre(
                        color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Allready have an account?",
                  style: GoogleFonts.alike(fontSize: 12),
                ),
                SizedBox(
                  width: 10.w,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Log in",
                      style: GoogleFonts.alike(
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                          color: Color(0XFF135A81),
                          fontWeight: FontWeight.bold),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
