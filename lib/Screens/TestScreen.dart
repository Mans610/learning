import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Screens/DashboardScreen.dart';
import 'package:http/http.dart' as http;
import 'VideoScreen.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  late TextEditingController pincode = TextEditingController();
  late Map findpincode;
  List findpincodeList = [];
  var city = '';
  var state = '';
  bool isLoading = true;

  Future<void> FindCity(String text) async {
    var pincodeUrl =
        await http.get(Uri.parse('https://api.zippopotam.us/in/$text'));
    if (pincodeUrl.statusCode == 200) {
      setState(() {
        findpincode = jsonDecode(pincodeUrl.body);
        findpincodeList = findpincode['places'];
        city = findpincodeList[0]['place name'];
        state = findpincodeList[0]['state'];
        print(findpincode);
        print(city);
        print(state);
        isLoading = true;
      });
    } else {
      isLoading = false;
    }
  }

  int pageIndex = 3;

  final pages = [
    VideoScreen("PHP"),
    DashboardScreen(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FindCity(pincode.text);
  }
  final _scaffoldkey = GlobalKey<FormState>();
  bool isPasswordValid(String pincodes) => pincodes.length == 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //   Icon(Icons.menu,color: Color(0XFF243468),),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50.h,
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Text(
                          "Hello,",
                          style: GoogleFonts.sourceSansPro(fontSize: 35),
                        ),
                        Text(
                          "Mr.Manish,",
                          style: GoogleFonts.roboto(
                              fontSize: 28,
                              color: Colors.pink,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "What Would You Learn Today ?",
                          style: GoogleFonts.oswald(fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/dashboard_logo.png'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Test Screen ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50.h,
              ),
              Text("Search Your City and State Name ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: pincode,
                  maxLength: 6,

                  keyboardType: TextInputType.number,
                  autofocus: false,
                  decoration: const InputDecoration(
                      hintText: 'Enter six digit pin code',
                      border: OutlineInputBorder()),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {

                  setState(() {
                    FindCity(pincode.text);
                  });
                },
                child: Container(
                  height: 50.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                          end: Alignment.topLeft,
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.pink,
                            Color(0XFF798ED6),
                          ])),
                  child: Center(
                    child: Text(
                      "Search",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: 50.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                      color: Color(0XFF798ED6),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          "CITY : ".toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      isLoading == true
                          ? Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Text(
                                city.toString().toUpperCase(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          : const CircularProgressIndicator(
                              color: Colors.white,
                            ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  height: 50.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          "STATE : ".toUpperCase(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      isLoading == true
                          ? Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Text(
                                state.toString().toUpperCase(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          : CircularProgressIndicator(
                              color: Colors.white,
                            )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            end: Alignment.topLeft,
            begin: Alignment.bottomRight,
            colors: [
              Colors.pink,
              Color(0XFF798ED6),
            ]),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VideoScreen("PHP")));
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                        Icons.play_circle_fill,
                        color: Colors.white,
                        size: 35,
                      )
                    : const Icon(
                        Icons.play_circle_outline,
                        color: Colors.white,
                        size: 35,
                      ),
              ),
              const Text(
                "Videos ",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardScreen()));
                  });
                },
                icon: pageIndex == 2
                    ? const Icon(
                        Icons.dashboard,
                        color: Colors.white,
                        size: 35,
                      )
                    : const Icon(
                        Icons.dashboard_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
              ),
              const Text(
                "Material ",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                    //  Navigator.push(context, MaterialPageRoute(builder: (context)=> TestScreen()));
                  });
                },
                icon: pageIndex == 3
                    ? const Icon(
                        Icons.text_snippet,
                        color: Colors.white,
                        size: 35,
                      )
                    : const Icon(
                        Icons.text_snippet_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
              ),
              const Text(
                "Test ",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
