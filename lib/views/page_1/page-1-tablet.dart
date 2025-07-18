import 'package:flutter/material.dart';

import '../../core/constants/app-colors.dart';

class TabletPageOne extends StatelessWidget {
  const TabletPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 700,
      color: AppColors.white,
      // padding: EdgeInsets.symmetric(
      //   horizontal: GetMediaQuary.getWidth(context) * 0.04, // 70 / 960
      //   vertical: GetMediaQuary.getHight(context) * 0.04, // 50 / 900
      // ),
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         TextComponent(
      //           text: "Hello,",
      //         ),
      //         TextComponent(
      //           text: "I'm",
      //           color: AppColors.redAccent,
      //         ),
      //       ],
      //     ),
      //     TextComponent(
      //       text: "Muhammad Daniyal",
      //       fontWeight: FontWeight.bold,
      //       fontSize: GetSize.getSLarge(context),
      //     ),
      //     TextComponent(
      //       text: "Flutter Developer and Web/App Interface Designer.",
      //     ),
      //     TextComponent(
      //       text:
      //       "I’m a passionate Flutter developer who enjoys building \n"
      //           "beautiful, fast, and functional mobile and web apps.\n"
      //           "I focus on delivering seamless UI/UX experiences \n"
      //           "using Flutter.With every project, I strive \n"
      //           "to write clean code and build \n"
      //           "intuitive designs.\n"
      //           "Let’s build something amazing together!",
      //       color: AppColors.grey,
      //       fontSize: GetSize.getSmall(context),
      //     ),
      //   ],
      // ),
    );
  }
}
