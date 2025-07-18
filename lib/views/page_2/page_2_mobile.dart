import 'package:flutter/material.dart';
import 'package:portfolio/core/widget/card_container.dart';

import '../../core/constants/app-colors.dart';
import '../../core/utils/dimension_size.dart';
import '../../core/utils/media_queries.dart';
import '../../core/widget/text_components.dart';

class MobilePageTwo extends StatefulWidget {
  const MobilePageTwo({super.key});

  @override
  State<MobilePageTwo> createState() => _MobilePageTwoState();
}

class _MobilePageTwoState extends State<MobilePageTwo> {
  final List<Map<String, dynamic>> whatIDoItems = [
    {
      'icon': Icons.flutter_dash,
      'title': 'Flutter App Development',
      'description': 'I build beautiful, responsive, and fast cross-platform apps using Flutter.',
    },
    {
      'icon': Icons.design_services,
      'title': 'UI/UX to Code',
      'description': 'I convert Figma or Adobe XD designs into pixel-perfect Flutter interfaces.',
    },
    {
      'icon': Icons.api,
      'title': 'API Integration',
      'description': 'I integrate apps with REST APIs, Firebase, and real-time databases.',
    },
    {
      'icon': Icons.devices,
      'title': 'Responsive Layout',
      'description': 'I ensure the UI works smoothly on mobile, tablet, and desktop.',
    },
    {
      'icon': Icons.lock_outline,
      'title': 'Secure Apps',
      'description': 'I implement authentication, authorization, and app security best practices.',
    },
    {
      'icon': Icons.speed,
      'title': 'Performance Optimization',
      'description': 'I optimize apps for speed, memory, and smooth animations.',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.background,
      padding: EdgeInsets.symmetric(
        horizontal: GetMediaQuary.getWidth(context) * 0.04,
        vertical: GetMediaQuary.getHight(context) * 0.07,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextComponent(
            text: 'MY SERVICES',
            color: AppColors.redAccent,
            fontSize: GetSize.getSLarge(context)*1.5,
          ),
          TextComponent(
            text: 'What I Do',
            fontWeight: FontWeight.bold,
            fontSize: GetSize.getSLarge(context)*3,
          ),

          SizedBox(height: GetMediaQuary.getHight(context) * 0.04),

          /// ✅ Horizontal GridView
          SizedBox(
            height: GetMediaQuary.getHight(context) * 0.4, // Adjust as needed
            child: GridView.builder(
              itemCount: whatIDoItems.length,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // ✅ Just one row
                mainAxisSpacing: GetMediaQuary.getWidth(context) * 0.04,
                childAspectRatio: 3 / 2, // Adjust based on your layout
              ),
              itemBuilder: (context, index) {
                final item = whatIDoItems[index];
                return CardContainer(
                  padding: EdgeInsets.all(GetMediaQuary.getWidth(context) * 0.035),
                    borderRadius: GetMediaQuary.getWidth(context)*0.1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          item['icon'],
                          size: GetSize.getSLarge(context)*4,
                          color: AppColors.iconRed,
                        ),
                        SizedBox(height: GetMediaQuary.getHight(context) * 0.03),
                        TextComponent(
                          text: item['title'],
                          fontSize: GetSize.getLarge(context)*2,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(height: GetMediaQuary.getHight(context) * 0.04),
                        TextComponent(
                          text: item['description'],
                          fontWeight: FontWeight.w400,
                          fontSize: GetSize.getSLarge(context)*1.5,
                          color: AppColors.grey,
                          maxLines: 10,
                        ),
                      ],
                    ),
                );
                // return Container(
                //   width: GetMediaQuary.getWidth(context) * 0.65,
                //   padding: EdgeInsets.all(GetMediaQuary.getWidth(context) * 0.035),
                //   decoration: BoxDecoration(
                //     color: AppColors.card,
                //     borderRadius: BorderRadius.circular(GetMediaQuary.getWidth(context) * 0.03),
                //     border: Border.all(color: AppColors.border),
                //     boxShadow: [
                //       BoxShadow(
                //         color: AppColors.shadow,
                //         blurRadius: GetMediaQuary.getWidth(context) * 0.01,
                //         offset: Offset(0, GetMediaQuary.getHight(context) * 0.006),
                //       ),
                //     ],
                //   ),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Icon(
                //         item['icon'],
                //         size: GetSize.getSLarge(context)*4,
                //         color: AppColors.iconRed,
                //       ),
                //       SizedBox(height: GetMediaQuary.getHight(context) * 0.03),
                //       TextComponent(
                //         text: item['title'],
                //         fontSize: GetSize.getLarge(context)*2,
                //         fontWeight: FontWeight.w700,
                //       ),
                //       SizedBox(height: GetMediaQuary.getHight(context) * 0.04),
                //       TextComponent(
                //         text: item['description'],
                //         fontWeight: FontWeight.w400,
                //         fontSize: GetSize.getSLarge(context)*1.5,
                //         color: AppColors.grey,
                //         maxLines: 10,
                //       ),
                //     ],
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );


  }
}
