import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app-colors.dart';
import 'package:portfolio/core/constants/text_components.dart';
import 'package:portfolio/utills/dimension_size.dart';
import 'package:portfolio/utills/media_queries.dart';

class DeskTopPageFour extends StatefulWidget {
  const DeskTopPageFour({super.key});

  @override
  State<DeskTopPageFour> createState() => _DeskTopPageFourState();
}

class _DeskTopPageFourState extends State<DeskTopPageFour> {
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
        vertical: GetMediaQuary.getHight(context) * 0.07,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextComponent(
            text: 'EXPERIENCE & EDUCATION',
            color: AppColors.redAccent,
            fontSize: GetSize.getSmall(context),
          ),
          TextComponent(
            text: 'My Journey',
            fontWeight: FontWeight.bold,
            fontSize: GetSize.getSLarge(context),
          ),
          SizedBox(height: GetMediaQuary.getHight(context) * 0.04),
          GridView.builder(
            itemCount: experienceAndEducation.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: GetMediaQuary.getWidth(context) * 0.03,
              mainAxisSpacing: GetMediaQuary.getHight(context) * 0.04,
              childAspectRatio: 2.5,

            ),
            itemBuilder: (context, index) {
              final item = experienceAndEducation[index];
              return Container(
                width: GetMediaQuary.getWidth(context) * 0.25,
                padding: EdgeInsets.all(GetMediaQuary.getWidth(context) * 0.015),
                decoration: BoxDecoration(
                  color: AppColors.card,
                  borderRadius: BorderRadius.circular(
                      GetMediaQuary.getWidth(context) * 0.015),
                  border: Border.all(color: AppColors.border),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.shadow,
                      blurRadius: GetMediaQuary.getWidth(context) * 0.01,
                      offset: Offset(0, GetMediaQuary.getHight(context) * 0.006),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextComponent(
                      text: item['title'] ?? '',
                      fontSize: GetSize.getLarge(context),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(height: GetMediaQuary.getHight(context) * 0.01),
                    TextComponent(
                      text: item['subTitle']!,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grey,
                    ),
                    SizedBox(height: GetMediaQuary.getHight(context) * 0.02),
                    TextComponent(
                      text: item['description'] ?? '',
                      fontWeight: FontWeight.w400,
                      color: AppColors.lightGrey,
                      fontSize: GetSize.getSmall(context),
                      maxLines: 10,
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
