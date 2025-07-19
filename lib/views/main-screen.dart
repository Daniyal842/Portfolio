
import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app-colors.dart';
import 'package:portfolio/core/widget/custom_appbar/custom_appbar.dart';
import 'package:portfolio/views/page_1/main-page-1.dart';
import 'package:portfolio/views/page_2/main_page_2.dart';
import 'package:portfolio/views/page_3/main_page_3.dart';
import 'package:portfolio/views/page_4/main_page_4.dart';
import 'package:portfolio/views/page_5/main_page_5.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

int selected=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar(
      //   backgroundColor: AppColors.background,
      //   title: Row(
      //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       // SizedBox(
      //       //   width: width*0.0156,
      //       // ),
      //       SizedBox(
      //         height: height * 0.06, // ~40px
      //         width: width * 0.03125, // ~40px
      //         child: Image.asset(
      //           AppIcons.logo,
      //           fit: BoxFit.contain,
      //           color: AppColors.iconRed,
      //         ),
      //       ),
      //
      //       TextComponent(
      //         text: "DANIYAL",
      //         fontSize: width*0.0156,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ],
      //   ),
      //   actions: [
      //     NavTextButton(
      //       text: "HOME",
      //       selectedIndex: selected,
      //       currentIndex: 1,
      //       onTap: () {
      //         setState(() => selected = 1);
      //       },
      //     ),
      //     NavTextButton(
      //       text: "SERVICES",
      //       selectedIndex: selected,
      //       currentIndex: 2,
      //       onTap: () {
      //         setState(() => selected = 2);
      //       },
      //     ),
      //     NavTextButton(
      //       text: "PORTFOLIO",
      //       selectedIndex: selected,
      //       currentIndex: 3,
      //       onTap: () {
      //         setState(() => selected = 3);
      //       },
      //     ),
      //     NavTextButton(
      //       text: "RESUME",
      //       selectedIndex: selected,
      //       currentIndex: 4,
      //       onTap: () {
      //         setState(() => selected = 4);
      //       },
      //     ),
      //     NavTextButton(
      //       text: "CONTACT",
      //       selectedIndex: selected,
      //       currentIndex: 5,
      //       onTap: () {
      //         setState(() => selected = 5);
      //       },
      //     ),
      //     SizedBox(
      //       width: width * 0.1719,
      //     ),
      //     InkWell(
      //       onTap: (){},
      //       splashColor: Colors.transparent,
      //       //highlightColor: Colors.transparent,
      //       child: Container(
      //         margin: EdgeInsets.symmetric(horizontal: 30,),
      //         padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20),
      //           color: AppColors.redAccent,
      //         ),
      //         child: TextComponent(
      //           text: "DOWNLOAD CV",
      //           fontSize: width * 0.0109,
      //         ),
      //       ),
      //     )
      //   ],
      // ),
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: true,
      body:  Column(
        children: [
          /// Fixed Custom AppBar
          CustomAppBar(
            selected: selected,
            onSelect: (index) {
              setState(() => selected = index);
            },
          ),

          /// Expanded scrollable content
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              children: [
                MainPageOne(),
                Divider(color: AppColors.background2),
                MainPageTwo(),
                Divider(color: AppColors.background2),
                MainPageThree(),
                Divider(color: AppColors.background2),
                MainPageFour(),
                Divider(color: AppColors.background2),
                MainPageFive(),
              ],
            ),
          ),
        ],
      ),

    // body: Column(
      //   children: [
      //     Expanded(
      //       flex: 15,
      //       child:  CustomAppBar(
      //         selected: selected,
      //         onSelect: (index) {
      //           setState(() {
      //             selected = index;
      //           });
      //         },
      //       ),
      //     ),
      //     Expanded(
      //       flex: 80,
      //       child: SingleChildScrollView(
      //         //padding: EdgeInsets.only(top: 100), // 👈 space for fixed navbar
      //         padding: EdgeInsets.only(
      //           bottom: MediaQuery.of(context).viewInsets.bottom,
      //         ),
      //         child: Column(
      //           children: [
      //             MainPageOne(),
      //             Divider(
      //               color: AppColors.background2,
      //             ),
      //             MainPageTwo(),
      //             Divider(
      //               color: AppColors.background2,
      //             ),
      //             MainPageThree(),
      //             Divider(
      //               color: AppColors.background2,
      //             ),
      //             MainPageFour(),
      //             Divider(
      //               color: AppColors.background2,
      //             ),
      //             MainPageFive()
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
