import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'DashboardScreen.dart';
import 'TestScreen.dart';

class VideoScreen extends StatefulWidget {
  String Name;
   VideoScreen(this.Name,{Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  int pageIndex = 1;

  final pages = [
    VideoScreen("PHP"),
    DashboardScreen(),



  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.Name);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      "Hello,",
                      style: GoogleFonts.sourceSansPro(fontSize: 35),
                    ),
                    Text(
                      widget.Name,
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
            height: 150.h,
          ),
          Text("Video \n Screen ",style: TextStyle(
            color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold
          ),)
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
                //    Navigator.push(context, MaterialPageRoute(builder: (context)=> VideoScreen()));
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
              const Text("Videos ",style: TextStyle(
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> DashboardScreen()));
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
              const Text("Material ",style: TextStyle(
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
