import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../assets/picture/image.dart';
import '../../core/constants/app-colors.dart';
import '../../core/utils/dimension_size.dart';
import '../../core/utils/media_queries.dart';
import '../../core/widget/text_components.dart';

class MobilePageOne extends StatelessWidget {
  const MobilePageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.background,
      padding: EdgeInsets.symmetric(
        horizontal: GetMediaQuary.getWidth(context) * 0.04, // 70 / 960
        vertical: GetMediaQuary.getHight(context) * 0.04, // 50 / 900
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              TextComponent(
                text: "Hello,",
                fontSize: GetSize.getMediam(context),
              ),
              TextComponent(
                text: "I'm",
                color: AppColors.redAccent,
                fontSize: GetSize.getMediam(context),
              ),
            ],
          ),
          TextComponent(
            text: "Muhammad Daniyal",
            // fontWeight: FontWeight.bold,
            fontSize: GetSize.getSLarge(context),
          ),
          TextComponent(
            text: "Flutter Developer and Web/App Interface Designer.",
            fontSize: GetSize.getLarge(context),
          ),
          TextComponent(
            text: "I’m a passionate Flutter developer who enjoys building \n"
                "beautiful, fast, and functional mobile and web apps.\n"
                "I focus on delivering seamless UI/UX experiences \n"
                "using Flutter.With every project, I strive \n"
                "to write clean code and build \n"
                "intuitive designs.\n"
                "Let’s build something amazing together!",
            color: AppColors.grey,
            fontSize: GetSize.getSmall(context),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                //padding: EdgeInsets.symmetric(vertical: 20),
                height: GetMediaQuary.getHight(context) * 0.3, //400,
                width: GetMediaQuary.getWidth(context) * 0.7, //350,
                color: AppColors.background2,
              ),
              Image.asset(
                AppImage.Profile,
                fit: BoxFit.cover,
                height: GetMediaQuary.getHight(context) * 0.4, // 500
                width: GetMediaQuary.getWidth(context) * 0.7,
              )
            ],
          )
        ],
      ),
    );
  }
}
