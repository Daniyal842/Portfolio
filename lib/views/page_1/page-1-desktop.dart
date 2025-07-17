import 'package:flutter/material.dart';
import 'package:portfolio/assets/picture/image.dart';
import 'package:portfolio/core/constants/app-colors.dart';
import 'package:portfolio/core/widget/text_components.dart';
import '../../core/utils/dimension_size.dart';
import '../../core/utils/media_queries.dart';

class DesktopPageOne extends StatefulWidget {
  const DesktopPageOne({super.key});

  @override
  State<DesktopPageOne> createState() => _DesktopPageOneState();
}

class _DesktopPageOneState extends State<DesktopPageOne> {
  @override
  Widget build(BuildContext context) {
    // final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      color: AppColors.background,
      padding: EdgeInsets.symmetric(
        horizontal: GetMediaQuary.getWidth(context) * 0.04, // 70 / 960
        vertical: GetMediaQuary.getHight(context) * 0.04, // 50 / 900
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 390,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    TextComponent(
                      text: "Hello,",
                    ),
                    SizedBox(
                      height: GetMediaQuary.getHight(context) * 0.0111,
                    ),
                    TextComponent(
                      text: "I'm",
                      color: AppColors.redAccent,
                    ),
                  ],
                ),
                SizedBox(
                  height: GetMediaQuary.getHight(context) * 0.0111,
                ),
                TextComponent(
                  text: "Muhammad Daniyal",
                  fontWeight: FontWeight.bold,
                  fontSize: GetSize.getSLarge(context),
                ),
                SizedBox(
                  height: GetMediaQuary.getHight(context) * 0.0111,
                ),
                TextComponent(
                  text: "Flutter Developer and Web/App Interface Designer.",
                ),
                SizedBox(
                  height: GetMediaQuary.getHight(context) * 0.0333,
                ),
                TextComponent(
                  text:
                      "I’m a passionate Flutter developer who enjoys building \n"
                      "beautiful, fast, and functional mobile and web apps.\n"
                      "I focus on delivering seamless UI/UX experiences \n"
                      "using Flutter.With every project, I strive \n"
                      "to write clean code and build \n"
                      "intuitive designs.\n"
                      "Let’s build something amazing together!",
                  color: AppColors.grey,
                  fontSize: GetSize.getSmall(context),
                ),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                //padding: EdgeInsets.symmetric(vertical: 20),
                height: GetMediaQuary.getHight(context) * 0.4444, //400,
                width: GetMediaQuary.getWidth(context) * 0.2916, //350,
                color: AppColors.background2,
              ),
              Image.asset(
                AppImage.Profile,
                fit: BoxFit.cover,
                height: GetMediaQuary.getHight(context) * 0.7555, // 500
                width: GetMediaQuary.getWidth(context) * 0.2916,
              )
            ],
          ),
        ],
      ),
    );
  }
}
