import 'package:flutter/material.dart';
import 'package:portfolio/assets/icons/icons.dart';
import 'package:portfolio/core/widget/card_container.dart';
import 'package:portfolio/core/widget/container_button.dart';

import '../../assets/picture/image.dart';
import '../../core/constants/app-colors.dart';
import '../../core/utils/dimension_size.dart';
import '../../core/utils/media_queries.dart';
import '../../core/widget/text_components.dart';

class MobilePageThree extends StatefulWidget {
  const MobilePageThree({super.key});

  @override
  State<MobilePageThree> createState() => _MobilePageThreeState();
}

class _MobilePageThreeState extends State<MobilePageThree> {
  final List<Map<String, dynamic>> recentWork = [
    {
      'projects': AppImage.Project_1,
    },
    {
      'projects': AppImage.Project_2,
    },
    {
      'projects': AppImage.Project_3,
    },
    {
      'projects': AppImage.Project_4,
    },
    {
      'projects': AppImage.Project_5,
    },
    {
      'projects': AppImage.Project_6,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.background,
      padding: EdgeInsets.symmetric(
        horizontal: GetMediaQuary.getWidth(context) * 0.04,
        vertical: GetMediaQuary.getHight(context) * 0.06,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextComponent(
            text: 'My Completed Work',
            color: AppColors.redAccent,
            fontSize: GetSize.getSLarge(context) * 1.3,
          ),
          TextComponent(
            text: 'Recent Work',
            fontWeight: FontWeight.bold,
            fontSize: GetSize.getSLarge(context) * 3,
          ),
          SizedBox(height: GetMediaQuary.getHight(context) * 0.04),
          GridView.builder(
            itemCount: recentWork.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // ✅ same as 3 items in Row
              crossAxisSpacing: GetMediaQuary.getWidth(context) * 0.04,
              mainAxisSpacing: GetMediaQuary.getHight(context) * 0.04,
              childAspectRatio: (GetMediaQuary.getWidth(context) * 0.3) /
                  (GetMediaQuary.getHight(context) *
                      0.27), // ✅ same as Container size
            ),
            itemBuilder: (context, index) {
              final item = recentWork[index];
              return CardContainer(
                padding: EdgeInsets.zero,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        GetMediaQuary.getWidth(context) * 0.01),
                    child: Image.asset(
                      item['projects'],
                      fit: BoxFit.cover, // make image fill the space
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
              );
            },
          ),
          ContainerButton(
            onTap: () {},
            text: "View All Works",
            fontSize: GetSize.getSLarge(context),
            bgColor: AppColors.background2,
            textColor: AppColors.white,
            showIcon: true,
            iconData: AppIcons.forwardArrow,
            iconColor: AppColors.white,
            iconSize: GetSize.getSLarge(context)*2,
          )
        ],
      ),
    );
  }
}
