import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app-colors.dart';
import 'package:portfolio/core/utils/media_queries.dart';
import 'package:portfolio/core/utils/dimension_size.dart';

import '../../core/widget/card_container.dart';
import '../../core/widget/text_components.dart';

class DesktopPageFive extends StatelessWidget {
  const DesktopPageFive({super.key});

  final List<Map<String, dynamic>> contactItems = const [
    {
      'icon': Icons.email_outlined,
      'title': 'Email',
      'value': 'animal@example.com',
    },
    {
      'icon': Icons.phone_android,
      'title': 'Phone',
      'value': '932-415-832-938',
    },
    {
      'icon': Icons.location_on_outlined,
      'title': 'Address',
      'value': '382 Waldo Ave SE\nSalem, Oregon',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final width = GetMediaQuary.getWidth(context);
    final height = GetMediaQuary.getHight(context);

    return Container(
      width: double.infinity,
      color: AppColors.background,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: height * 0.06,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextComponent(
            text: 'GET IN TOUCH',
            color: AppColors.redAccent,
            fontSize: GetSize.getSmall(context),
          ),
          TextComponent(
            text: 'Contact Me',
            fontWeight: FontWeight.bold,
            fontSize: GetSize.getSLarge(context),
          ),
          SizedBox(height: height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: contactItems.map((item) {
              return Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.01),
                  child: CardContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          item['icon'],
                          size: GetSize.getLarge(context),
                          color: AppColors.iconRed,
                        ),
                        SizedBox(height: height * 0.02),
                        TextComponent(
                          text: item['title'],
                          fontSize: GetSize.getLarge(context),
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(height: height * 0.01),
                        TextComponent(
                          text: item['value'],
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: GetSize.getSmall(context),
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
