import 'package:flutter/material.dart';
import 'package:portfolio/assets/picture/image.dart';
import 'package:portfolio/core/constants/app-colors.dart';
import 'package:portfolio/core/widget/text_components.dart';
import '../../core/utils/dimension_size.dart';
import '../../core/utils/media_queries.dart';

class DesktopPageThree extends StatefulWidget {
  const DesktopPageThree({super.key});

  @override
  State<DesktopPageThree> createState() => _DesktopPageThreeState();
}

class _DesktopPageThreeState extends State<DesktopPageThree> {
  final List<Map<String , dynamic>> recentWork =[
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
            fontSize: GetSize.getSmall(context),
          ),
          TextComponent(
            text: 'Recent Work',
            fontWeight: FontWeight.bold,
            fontSize: GetSize.getSLarge(context),
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
              childAspectRatio: (GetMediaQuary.getWidth(context) * 0.25) / (GetMediaQuary.getHight(context) * 0.37), // ✅ same as Container size
            ),
            itemBuilder: (context, index) {
              final item = recentWork[index];
              return Container(
                width: GetMediaQuary.getWidth(context) * 0.25, // ✅ match Row layout
                // height: height * 0.37, // optional, handled by childAspectRatio
                //padding: EdgeInsets.all(GetMediaQuary.getWidth(context) * 0.001),
                decoration: BoxDecoration(
                  color: AppColors.card,
                  borderRadius: BorderRadius.circular(GetMediaQuary.getWidth(context) * 0.01),
                  border: Border.all(color: AppColors.border),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.shadow,
                      blurRadius: GetMediaQuary.getWidth(context) * 0.01,
                      offset: Offset(0, GetMediaQuary.getHight(context) * 0.006),
                    ),
                  ],
                ),
                child:   ClipRRect(
                  borderRadius: BorderRadius.circular(GetMediaQuary.getWidth(context) * 0.01),
                  child: Image.asset(
                    item['projects'],
                    fit: BoxFit.cover, // make image fill the space
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
