import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/assets/icons/icons.dart';
import 'package:portfolio/assets/picture/image.dart';
import 'package:portfolio/core/constants/app-colors.dart';
import 'package:portfolio/core/constants/text_components.dart';

class DesktopPageOne extends StatefulWidget {
  const DesktopPageOne({super.key});

  @override
  State<DesktopPageOne> createState() => _DesktopPageOneState();
}

class _DesktopPageOneState extends State<DesktopPageOne> {

  @override
  Widget build(BuildContext context) {
   final double width = MediaQuery.of(context).size.width;
   final double height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: 600,
      color: AppColors.background,
      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 50),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TextComponent(
                    text: "Hello,",
                    fontSize: width * 0.0138,
                  ),
                  SizedBox(
                    width: height * 0.0111,
                  ),
                  TextComponent(
                    text: "I'm",
                    fontSize: width * 0.0138,
                    color: AppColors.redAccent,
                  ),
                ],
              ),
              SizedBox(height: height * 0.0111,),
              TextComponent(
                text: "Muhammad Daniyal",
                fontSize: width * 0.0208,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: height * 0.0111,),
              TextComponent(
                text: "Flutter Developer and Web/App Interface Designer.",
                fontSize: width * 0.0138,
              ),
              SizedBox(height: height * 0.0333,),
              TextComponent(
                text: "I’m a passionate Flutter developer who enjoys building beautiful, fast, and \n"
                      "functional mobile and web apps.I focus on delivering seamless UI/UX \n"
                      "experiences using Flutter.With every project, I strive to write \n"
                      "clean code and build intuitive designs.\n"
                      "Let’s build something amazing together!",
                color: AppColors.grey,
                fontSize: width * 0.0116,
              )
            ],
          ),


          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                //padding: EdgeInsets.symmetric(vertical: 20),
                height: height * 0.4444,//400,
                width: width * 0.2916,//350,
                color: AppColors.background2,
              ),
              Image.asset(
                AppImage.Profile,
                fit: BoxFit.contain,
                height: height * 0.7555, // 500
                width: width * 0.2916,
              )
            ],
          ),
        ],
      ),
    );
  }
}