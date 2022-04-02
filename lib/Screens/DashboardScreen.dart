import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/Screens/Courses/C_language_Screen.dart';
import 'package:untitled/Screens/VideoScreen.dart';

import 'TestScreen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();
  int pageIndex = 2;

  final pages = [
      VideoScreen('PHP'),

    TestScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: Drawer(
        elevation: 100,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              topLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
        ),
        backgroundColor: Color(0XFF5274E8),
        child: ListView(
          children: [
            DrawerHeader(

              decoration: BoxDecoration(

                  // gradient: const LinearGradient(
                  //   begin: Alignment.topRight,
                  //   end: Alignment.bottomLeft,
                  //   colors: [
                  //     Colors.pink,
                  //     Color(0XFF798ED6),
                  //   ],
                  // )
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Mr.Manish",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "PHP",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              indent: 10.h,
                   thickness: 1,
              color: Colors.white,
              endIndent: 10.h,
            ),
            ListTile(
              //tileColor: Colors.pink,

              focusColor: Colors.pink,
              autofocus: true,
              title: Text(
                "Home",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  color: Colors.white,),
              ),
              leading: Icon(
                Icons.home_filled,
                  color: Colors.white,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                  color: Colors.white,
              ),
            ),
            Divider(
              indent: 10.h,
              color: Colors.white,
              // thickness: 1,
              endIndent: 10.h,
            ),
            ListTile(
              //tileColor: Colors.pink,

              focusColor: Colors.pink,
              autofocus: true,
              title: Text(
                "Subscription",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  color: Colors.white,),
              ),
              leading: Icon(
                Icons.discount_outlined,
                  color: Colors.white,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                  color: Colors.white,
              ),
            ),
            Divider(
              indent: 10.h,
              //  thickness: 1,
              endIndent: 10.h,
              color: Colors.white,
            ),
            ListTile(
              //tileColor: Colors.pink,

              focusColor: Colors.pink,
              autofocus: true,
              title: Text(
                "Standard Course",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  color: Colors.white,),
              ),
              leading: Icon(
                Icons.insert_chart_outlined_rounded,
                  color: Colors.white,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
            Divider(
              indent: 10.h,
              //   thickness: 1,
              endIndent: 10.h,
              color: Colors.white,
            ),
            ListTile(
              //tileColor: Colors.pink,
              focusColor: Colors.pink,
              autofocus: true,
              title: Text(
                "Profile",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  color: Colors.white,),
              ),
              leading: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
            Divider(
              indent: 10.h,
              // thickness: 1,
              endIndent: 10.h,
              color: Colors.white,
            ),
            ListTile(
              //tileColor: Colors.pink,

              focusColor: Colors.pink,
              autofocus: true,
              title: Text(
                "Privacy Policy",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  color: Colors.white,),
              ),
              leading: const Icon(
                Icons.privacy_tip_outlined,
                color: Colors.white,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
            Divider(
              indent: 10.h,
              //   thickness: 1,
              color: Colors.white,
              endIndent: 10.h,
            ),
            ListTile(
              //tileColor: Colors.pink,

              focusColor: Colors.pink,
              autofocus: true,
              title: Text(
                "Terms &  Conditions",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  color: Colors.white,),
              ),
              leading: Icon(
                Icons.construction_sharp,
                color: Colors.white,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
            Divider(
              indent: 10.h,
              //    thickness: 1,
              color: Colors.white,
              endIndent: 10.h,
            ),
            ListTile(
              //tileColor: Colors.pink,

              focusColor: Colors.pink,
              autofocus: true,
              title: Text(
                "Contact us",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  color: Colors.white,),
              ),
              leading: const Icon(
                Icons.contact_phone,
                color: Colors.white,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
            Divider(
              indent: 10.h,
              //   thickness: 1,
              color: Colors.white,
              endIndent: 10.h,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
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
                    InkWell(
                        onTap: (){
                          _scaffoldkey.currentState!.openDrawer();
                        },

                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(
                              color: Colors.purpleAccent,
                              blurRadius: 10.0,
                            ),],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1,color: Colors.purpleAccent,)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 3,
                                  width: 20,
                                  color: Colors.blue,
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  height: 3,
                                  width: 18,
                                  color: Colors.blue,
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  height: 3,
                                  width: 16,
                                  color: Colors.blue,
                                )
                              ],
                            ),
                          ),
                        )

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
          CarouselSlider(
            items: [
              Image.asset(
                'assets/images/image_slide1.png',

               // fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/images/image_slide2.png',
              //  fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/images/image_slide3.jpeg',
              //  fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/images/image_slide4.jpeg',
             //   fit: BoxFit.fill,
              ),
              Image.asset(
                'assets/images/image_slide5.jpeg',
             //   fit: BoxFit.fill,
              ),
            ],
            options: CarouselOptions(
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 12 / 5,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          // Container(
          //   height: 40.h,
          //   width: 200.w,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10),
          //       border: Border.all(width: 1, color: Colors.white),
          //       gradient: const LinearGradient(
          //         begin: Alignment.topRight,
          //         end: Alignment.bottomLeft,
          //         colors: [
          //           Colors.pink,
          //           Color(0XFF798ED6),
          //         ],
          //       )),
          //   child: Center(
          //       child: Text(
          //     'Learn Coding',
          //     style: GoogleFonts.actor(fontSize: 30, color: Colors.white),
          //   )),
          // ),
          // SizedBox(
          //   height: 10.h,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: const [
                 Text('Courses',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            // decoration: BoxDecoration(
            //   color: Colors.grey[150]
            // ),
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => C_language_Screen()));
                            },
                            child: Container(
                              height: 50.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                  Border.all(width: 1, color: Colors.white),
                                  gradient: const LinearGradient(
                                      end: Alignment.topLeft,
                                      begin: Alignment.bottomRight,
                                      colors: [
                                        Colors.pink,
                                        Color(0XFF798ED6),
                                      ])),
                              child: Center(
                                  child: Text(
                                    'C',
                                    style: GoogleFonts.roboto(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  )),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => VideoScreen("DEMO")));
                            },
                            child: Container(
                              height: 50.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                  Border.all(width: 1, color: Colors.white),
                                  gradient: const LinearGradient(
                                      end: Alignment.topLeft,
                                      begin: Alignment.bottomRight,
                                      colors: [
                                        Color(0XFF798ED6),
                                        Colors.pink,
                                      ])),
                              child: Center(
                                  child: Text(
                                    'C++',
                                    style: GoogleFonts.roboto(
                                        fontSize: 25,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                gradient: const LinearGradient(
                                    end: Alignment.topLeft,
                                    begin: Alignment.bottomRight,
                                    colors: [
                                      Colors.pink,
                                      Color(0XFF798ED6),
                                    ])),
                            child: Center(
                                child: Text(
                              'JavaScript',
                              style: GoogleFonts.roboto(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => VideoScreen("DEMO")));
                            },
                            child: Container(
                              height: 50.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border:
                                      Border.all(width: 1, color: Colors.white),
                                  gradient: const LinearGradient(
                                      end: Alignment.topLeft,
                                      begin: Alignment.bottomRight,
                                      colors: [
                                        Color(0XFF798ED6),
                                        Colors.pink,
                                      ])),
                              child: Center(
                                  child: Text(
                                'PHP',
                                style: GoogleFonts.roboto(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                gradient: const LinearGradient(
                                    end: Alignment.topLeft,
                                    begin: Alignment.bottomRight,
                                    colors: [
                                      Colors.pink,
                                      Color(0XFF798ED6),
                                    ])),
                            child: Center(
                                child: Text(
                              'HTML',
                              style: GoogleFonts.roboto(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                          Container(
                            height: 50.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                gradient: const LinearGradient(
                                    end: Alignment.topLeft,
                                    begin: Alignment.bottomRight,
                                    colors: [
                                      Color(0XFF798ED6),
                                      Colors.pink,
                                    ])),
                            child: Center(
                                child: Text(
                              'CSS',
                              style: GoogleFonts.roboto(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                gradient: const LinearGradient(
                                    end: Alignment.topLeft,
                                    begin: Alignment.bottomRight,
                                    colors: [
                                      Colors.pink,
                                      Color(0XFF798ED6),
                                    ])),
                            child: Center(
                                child: Text(
                              'Java',
                              style: GoogleFonts.roboto(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                          Container(
                            height: 50.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                gradient: const LinearGradient(
                                    end: Alignment.topLeft,
                                    begin: Alignment.bottomRight,
                                    colors: [
                                      Color(0XFF798ED6),
                                      Colors.pink,
                                    ])),
                            child: Center(
                                child: Text(
                              'PYTHON',
                              style: GoogleFonts.roboto(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> VideoScreen('php')));
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
              const Text("Videos  ",style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold
              ),)
            ],
          ),


          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                   // Navigator.push(context, MaterialPageRoute(builder: (context)=> DashboardScreen()));
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
              const Text("Dashboard ",style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold
              ),)
            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TestScreen()));
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
              const Text("Test ",style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold
              ),)
            ],
          ),
        ],
      ),
    );
  }

}
