
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/assets/icons/icons.dart';
import 'package:portfolio/core/constants/app-colors.dart';
import 'package:portfolio/core/widget/text_components.dart';
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // SizedBox(
            //   width: width*0.0156,
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
              color: selected==1
                  ? AppColors.lightGrey
                  : AppColors.grey,
              fontWeight: selected==1
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
            onPressed: (){
              selected=1;
              setState(() {

              });
            },
          ),
          TextButton(
            child: TextComponent(
              text: "SERVICES",
              fontSize: width * 0.0109,
              color: selected==2
                  ? AppColors.lightGrey
                  : AppColors.grey,
              fontWeight: selected==2
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
            onPressed: (){
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
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        //padding: EdgeInsets.only(top: 100), // 👈 space for fixed navbar
        child: Column(
          children: [
            MainPageOne(),
            Divider(
              color: AppColors.background2,
            ),
            MainPageTwo(),
            Divider(
              color: AppColors.background2,
            ),
            MainPageThree(),
            Divider(
              color: AppColors.background2,
            ),
            MainPageFour(),
            Divider(
              color: AppColors.background2,
            ),
            MainPageFive()
          ],
        ),
      ),
    );
  }
}
