// import 'package:flutter/material.dart';
// import 'package:portfolio/assets/icons/icons.dart';
// import 'package:portfolio/core/constants/app-colors.dart';
// import 'package:portfolio/core/constants/text_components.dart';
// import 'package:portfolio/views/page_1/main-page-1.dart';
//
// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//   final List<String> titles = [
//     "HOME",
//     "SERVICES",
//     "PORTFOLIO",
//     "RESUME",
//     "CONTACT"
//   ];
//   int currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(children: [
//         Container(
//           width: double.infinity,
//           color: AppColors.background,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Image.asset(
//                       AppIcons.logo,
//                       color: AppColors.redAccent,
//                       height: 50,
//                       width: 50,
//                     ),
//                     TextComponent(
//                       text: "Daniyal",
//                       fontFamily: 'Poppins',
//                       fontSize: 32,
//                       color: AppColors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: List.generate(
//                     titles.length,
//                         (index) {
//                       final bool isActive = index == currentIndex;
//
//                       return Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: Column(
//                           children: [
//                             GestureDetector(
//                               onTap: () {
//                                 currentIndex = index;
//                                 setState(() {});
//                               },
//                               child: TextComponent(
//                                 text: titles[index],
//                                 fontFamily: 'Poppins',
//                                 fontSize: 16,
//                                 fontWeight: isActive
//                                     ? FontWeight.bold
//                                     : FontWeight.normal,
//                                 color: isActive
//                                     ? AppColors.lightGrey
//                                     : AppColors.grey,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 4,
//                             ),
//                             if (isActive)
//                               AnimatedContainer(
//                                 duration: Duration(microseconds: 300),
//                                 curve: Curves.easeInOut,
//                                 //margin: EdgeInsets.only(top: 6),
//                                 child: Row(
//                                   children: List.generate(3, (dotIndex) {
//                                     return AnimatedContainer(
//                                       duration: Duration(microseconds: 300),
//                                       margin:
//                                       EdgeInsets.symmetric(horizontal: 3),
//                                       width: 8,
//                                       height: 8,
//                                       decoration: BoxDecoration(
//                                         shape: BoxShape.circle,
//                                         color: AppColors.lightGrey,
//                                       ),
//                                     );
//                                   }),
//                                 ),
//                               ),
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 14,vertical: 12),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: AppColors.pinkAccent,
//                   ),
//                   child: TextComponent(
//                     text: "DOWNLOAD CV",
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//         SingleChildScrollView(
//           padding: EdgeInsets.only(top: 120),
//           child: Column(
//             children: [
//               MainPageOne(),
//             ],
//           ),
//         ),
//       ]),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:portfolio/assets/icons/icons.dart';
import 'package:portfolio/core/constants/app-colors.dart';
import 'package:portfolio/core/constants/text_components.dart';
import 'package:portfolio/views/page_1/main-page-1.dart';
import 'package:portfolio/views/page_2/main_page_2.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
//   final List<String> titles = [
//     "HOME",
//     "SERVICES",
//     "PORTFOLIO",
//     "RESUME",
//     "CONTACT"
//   ];
//   int currentIndex = 0;
int selected=1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        // leading: Image.asset(
        //   AppIcons.logo,
        //   color: AppColors.iconRed,
        //   height: 1,
        //   width: 1,
        // ),
        title: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: width*0.0156,
            ),
            // Image.asset(
            //   AppIcons.logo,
            //   color: AppColors.iconRed,
            //   height: height * 0.05,
            //   width: width * 0.03125,
            // ),
            SizedBox(
              height: height * 0.06, // ~40px
              width: width * 0.03125, // ~40px
              child: Image.asset(
                AppIcons.logo,
                fit: BoxFit.contain,
                color: AppColors.iconRed,
              ),
            ),

            TextComponent(
              text: "DANIYAL",
              fontSize: width*0.0156,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        actions: [
          TextButton(
            child: TextComponent(
              text: "HOME",
              fontSize: width * 0.0109,
              color: selected==1?AppColors.lightGrey:AppColors.grey,
              fontWeight: selected==1?FontWeight.bold:FontWeight.normal,
            ),
            onPressed: () {
              selected=1;
              setState(() {

              });
            },
          ),
          TextButton(
            child: TextComponent(
              text: "SERVICES",
              fontSize: width * 0.0109,
              color: selected==2?AppColors.lightGrey:AppColors.grey,
              fontWeight: selected==2?FontWeight.bold:FontWeight.normal,
            ),
            onPressed: () {
              selected=2;
              setState(() {
              });
            },
          ),
          TextButton(
            child: TextComponent(
              text: "PORTFOLIO",
              fontSize: width * 0.0109,
              color: selected==3?AppColors.lightGrey:AppColors.grey,
              fontWeight: selected==3?FontWeight.bold:FontWeight.normal,
            ),
            onPressed: () {
              selected=3;
              setState(() {

              });
            },
          ),
          TextButton(
            child: TextComponent(
              text: "RESUME",
              fontSize: width * 0.0109,
              color: selected==4?AppColors.lightGrey:AppColors.grey,
              fontWeight: selected==4?FontWeight.bold:FontWeight.normal,
            ),
            onPressed: () {
              selected=4;
              setState(() {

              });
            },
          ),
          TextButton(
            child: TextComponent(
              text: "CONTACT",
              fontSize: width * 0.0109,
              color: selected==5?AppColors.lightGrey:AppColors.grey,
              fontWeight: selected==5?FontWeight.bold:FontWeight.normal,
            ),
            onPressed: () {
              selected=5;
              setState(() {

              });
            },
          ),
          SizedBox(
            width: width * 0.1719,
          ),
          InkWell(
            onTap: (){},
            splashColor: Colors.transparent,
            //highlightColor: Colors.transparent,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30,),
              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.redAccent,
              ),
              child: TextComponent(
                text: "DOWNLOAD CV",
                fontSize: width * 0.0109,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        //padding: EdgeInsets.only(top: 100), // 👈 space for fixed navbar
        child: Column(
          children: [
            MainPageOne(),
            MainPageTwo(),
            MainPageOne(),
            // MainPageTwo(),
            // MainPageThree(),
            // MainPageFour(),
            // MainPageFive(),
          ],
        ),
      ),
      // body: Stack(
      //   children: [
      //     // 🔽 Scrollable content
      //     // SingleChildScrollView(
      //     //   //padding: EdgeInsets.only(top: 100), // 👈 space for fixed navbar
      //     //   child: Column(
      //     //     children: [
      //     //       MainPageOne(),
      //     //       MainPageOne(),
      //     //       MainPageOne(),
      //     //       MainPageOne(),
      //     //       // MainPageTwo(),
      //     //       // MainPageThree(),
      //     //       // MainPageFour(),
      //     //       // MainPageFive(),
      //     //     ],
      //     //   ),
      //     // ),
      //
      //     // 🔼 Fixed Navbar
      //     // Container(
      //     //   height: 100,
      //     //   width: double.infinity,
      //     //   color: AppColors.background,
      //     //    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
      //     //    child: Row(
      //     //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     //     children: [
      //     //       // 🔹 Logo + Name
      //     //       Row(
      //     //         children: [
      //     //           Image.asset(
      //     //             AppIcons.logo,
      //     //             color: AppColors.redAccent,
      //     //             height: 50,
      //     //             width: 50,
      //     //           ),
      //     //           SizedBox(width: 12),
      //     //           TextComponent(
      //     //             text: "Daniyal",
      //     //             fontFamily: 'Poppins',
      //     //             fontSize: 32,
      //     //             color: AppColors.white,
      //     //             fontWeight: FontWeight.bold,
      //     //           ),
      //     //         ],
      //     //       ),
      //     //
      //     //       // 🔹 Navigation Buttons
      //     //       Row(
      //     //         children: List.generate(
      //     //           titles.length,
      //     //               (index) {
      //     //             final bool isActive = index == currentIndex;
      //     //
      //     //             return Padding(
      //     //               padding: const EdgeInsets.symmetric(horizontal: 16),
      //     //               child: Column(
      //     //                 children: [
      //     //                   GestureDetector(
      //     //                     onTap: () {
      //     //                       setState(() {
      //     //                         currentIndex = index;
      //     //                       });
      //     //                       // TODO: Scroll to section
      //     //                     },
      //     //                     child: TextComponent(
      //     //                       text: titles[index],
      //     //                       fontFamily: 'Poppins',
      //     //                       fontSize: 16,
      //     //                       fontWeight: isActive
      //     //                           ? FontWeight.bold
      //     //                           : FontWeight.normal,
      //     //                       color: isActive
      //     //                           ? AppColors.lightGrey
      //     //                           : AppColors.grey,
      //     //                     ),
      //     //                   ),
      //     //                   SizedBox(height: 4),
      //     //                   if (isActive)
      //     //                     AnimatedContainer(
      //     //                       duration: Duration(milliseconds: 300),
      //     //                       curve: Curves.easeInOut,
      //     //                       child: Row(
      //     //                         children: List.generate(3, (dotIndex) {
      //     //                           return AnimatedContainer(
      //     //                             duration: Duration(milliseconds: 300),
      //     //                             margin:
      //     //                             EdgeInsets.symmetric(horizontal: 3),
      //     //                             width: 8,
      //     //                             height: 8,
      //     //                             decoration: BoxDecoration(
      //     //                               shape: BoxShape.circle,
      //     //                               color: AppColors.lightGrey,
      //     //                             ),
      //     //                           );
      //     //                         }),
      //     //                       ),
      //     //                     ),
      //     //                 ],
      //     //               ),
      //     //             );
      //     //           },
      //     //         ),
      //     //       ),
      //     //
      //     //       // 🔹 Download CV Button
      //     //       Container(
      //     //         padding:
      //     //         EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      //     //         decoration: BoxDecoration(
      //     //           borderRadius: BorderRadius.circular(20),
      //     //           color: AppColors.pinkAccent,
      //     //         ),
      //     //         child: TextComponent(
      //     //           text: "DOWNLOAD CV",
      //     //           fontSize: 14,
      //     //           fontWeight: FontWeight.w600,
      //     //           fontFamily: 'Poppins',
      //     //           color: Colors.white,
      //     //         ),
      //     //       ),
      //     //     ],
      //     //   ),
      //     // ),
      //   ],
      // ),
    );
  }
}
