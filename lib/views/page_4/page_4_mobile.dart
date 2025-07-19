import 'package:flutter/material.dart';

import '../../core/constants/app-colors.dart';
import '../../core/utils/dimension_size.dart';
import '../../core/utils/media_queries.dart';
import '../../core/widget/card_container.dart';
import '../../core/widget/text_components.dart';

class MobilePageFour extends StatefulWidget {
  const MobilePageFour({super.key});

  @override
  State<MobilePageFour> createState() => _MobilePageFourState();
}

class _MobilePageFourState extends State<MobilePageFour> {
  final List<Map<String, dynamic>> experienceAndEducation = [
    {
      'title': 'BS Software Engineering – Gomal University',
      'subTitle': 'Dera Ismail Khan (2023 – Present)',
      'description': 'Currently enrolled in BS Software Engineering at Gomal University. Studying core subjects like software architecture, databases, and mobile app development. Strong foundation in programming and software lifecycle practices.',
    },
    {
      'title': 'Coaching – Bismillah IT College',
      'subTitle': 'Dera Ismail Khan (2024)',
      'description': 'Started my development journey with professional coaching. Learned C++, C#, and MySQL, and built desktop applications using Windows Forms. This is where I discovered Flutter — and since then, I’ve focused on it. Now working on Flutter at an advanced level and constantly improving through self-learning.',
    },
    {
      'title': 'Programming with C++',
      'subTitle': '(2023 – Coaching Start)',
      'description': 'Learned core programming concepts including loops, arrays, functions, and object-oriented programming using C++. This gave me a strong problem-solving base and logical thinking skills.',
    },
    {
      'title': 'Windows App Development with C#',
      'subTitle': 'Bismillah IT Coaching (2024)',
      'description': 'Developed Windows Forms applications using C#. Practiced GUI design, data handling, and object-oriented principles. Connected apps with MySQL and local databases.',
    },
    {
      'title': 'Flutter Development – Self Learning',
      'subTitle': 'Ongoing (2024 – Present)',
      'description': 'Building mobile and web applications using Flutter. Worked on responsive layouts, animations, and Firebase integration. Practiced state management using Provider and Riverpod. Developed my own portfolio and continue learning advanced concepts.',
    },
    {
      'title': 'Tools & Technologies',
      'subTitle': 'Technologies I Use',
      'description': 'Flutter, Firebase, SQLite, Provider, Riverpod, C++, C#, MySQL, Windows Forms, Firebase Auth, Firestore. Hands-on experience with cross-platform app development and backend integration.',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.background,
      padding: EdgeInsets.symmetric(
        horizontal: GetMediaQuary.getWidth(context) * 0.04,
        vertical: GetMediaQuary.getHight(context) * 0.02,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextComponent(
            text: 'EXPERIENCE & EDUCATION',
            color: AppColors.redAccent,
            fontSize: GetSize.getSLarge(context)*1.5,
          ),
          TextComponent(
            text: 'My Journey',
            fontWeight: FontWeight.bold,
            fontSize: GetSize.getSLarge(context)*3,
          ),
          SizedBox(height: GetMediaQuary.getHight(context) * 0.04),
          ListView.builder(
            itemCount: experienceAndEducation.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final item = experienceAndEducation[index];
              return CardContainer(
                padding: EdgeInsets.all(GetMediaQuary.getWidth(context)*0.02),
                margen: EdgeInsets.symmetric(vertical: GetMediaQuary.getHight(context)*0.01),
                width: double.infinity,
                borderRadius: GetMediaQuary.getWidth(context)*0.02,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextComponent(
                      text: item['title'] ?? '',
                      fontSize: GetSize.getSLarge(context)*2.2,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(height: GetMediaQuary.getHight(context) * 0.01),
                    TextComponent(
                      text: item['subTitle']!,
                      fontSize: GetSize.getSLarge(context)*1.5,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grey,
                    ),
                    SizedBox(height: GetMediaQuary.getHight(context) * 0.02),
                    TextComponent(
                      text: item['description'] ?? '',
                      fontWeight: FontWeight.w400,
                      color: AppColors.lightGrey,
                      fontSize: GetSize.getSLarge(context)*1.2,
                      maxLines: 20,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
