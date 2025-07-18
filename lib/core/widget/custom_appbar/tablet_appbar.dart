import 'package:flutter/material.dart';
import '../../../../../core/widget/text_components.dart';
import '../../../../../assets/icons/icons.dart';
import '../../constants/app-colors.dart';
import '../../utils/dimension_size.dart';
import '../../utils/media_queries.dart';


class TabletAppBar extends StatelessWidget {
  final int selected;
  final Function(int) onSelect;

  const TabletAppBar({
    super.key,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    double width = GetMediaQuary.getWidth(context);

    return AppBar(
      backgroundColor: AppColors.background,
      elevation: 0,
      title: Row(
        children: [
          Image.asset(AppIcons.logo, height: width * 0.07, color: AppColors.iconRed),
          SizedBox(width: 12),
          TextComponent(
            text: "DANIYAL",
            fontSize: width * 0.025,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
      actions: [
        PopupMenuButton<int>(
          color: AppColors.card,
          icon: Icon(Icons.menu, color: AppColors.white),
          onSelected: onSelect,
          itemBuilder: (context) => [
            PopupMenuItem(value: 1, child:TextComponent(
              text: "HOME",
            ),),
            PopupMenuItem(value: 2, child: TextComponent(
              text: "SERVICES",
            ),),
            PopupMenuItem(value: 3, child: TextComponent(
              text: "PORTFOLIO",
            ),),
            PopupMenuItem(value: 4, child: TextComponent(
              text: "RESUME",
            ),),
            PopupMenuItem(value: 5, child: TextComponent(
              text: "CONTACT",
            ),),
          ],
        ),
      ],
    );
  }
}
