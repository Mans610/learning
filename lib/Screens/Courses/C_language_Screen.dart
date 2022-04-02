import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class C_language_Screen extends StatefulWidget {
  const C_language_Screen({Key? key}) : super(key: key);

  @override
  State<C_language_Screen> createState() => _C_language_ScreenState();
}

class _C_language_ScreenState extends State<C_language_Screen> {
  bool introVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                        "Do you want to learn C Language ? \nThan You are coming right place !",
                        style: GoogleFonts.oswald(fontSize: 12),
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
                  'assets/images/C_Lan/c_lan_img_1.jpeg',
                  // fit: BoxFit.fill,
                ),
                Image.asset(
                  'assets/images/C_Lan/c_lan_img_2.png',
                  //  fit: BoxFit.fill,
                ),
                Image.asset(
                  'assets/images/C_Lan/c_lan_img_3.png',
                  //  fit: BoxFit.fill,
                ),
                Image.asset(
                  'assets/images/C_Lan/c_lan_img_4.png',
                  //   fit: BoxFit.fill,
                ),
                Image.asset(
                  'assets/images/C_Lan/c_lan_img_5.jpeg',
                  //   fit: BoxFit.fill,
                ),
              ],
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                scrollDirection: Axis.horizontal,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  setState(() {
                    introVisibility = !introVisibility;
                  });
                },
                child: Container(
                  height: 60.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),

                    //border: Border.all(width: 1)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Introduction",
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),


                      Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: introVisibility == true
                              ? Center(
                                child: Icon(Icons.keyboard_arrow_up,size: 40,),
                              )
                              : Center(
                                child: Icon(Icons.keyboard_arrow_down_outlined,size: 40,),
                              ),),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Visibility(
                visible: introVisibility,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0),
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      //border: Border.all(width: 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'C Language Introduction :-',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              Expanded(child: Text("C programming is a general-purpose, procedural, imperative computer programming language developed in 1972 by Dennis M. Ritchie at the Bell Telephone Laboratories to develop the UNIX operating system. C is the most widely used computer language. It keeps fluctuating at number one scale of popularity along with Java programming language, which is also equally popular and most widely used among modern software programmers.",style: TextStyle(fontSize: 12),))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
