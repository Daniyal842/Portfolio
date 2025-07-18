import 'package:flutter/material.dart';
import '../../utils/media_queries.dart';
import 'desktop_appbar.dart';
import 'tablet_appbar.dart';
import 'mobile_appbar.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int selected;
  final Function(int) onSelect;

  const CustomAppBar({
    super.key,
    required this.selected,
    required this.onSelect,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    double width = GetMediaQuary.getWidth(context);

    if (width >= 1100) {
      return DesktopAppBar(selected: selected, onSelect: onSelect);
    } else if (width >= 500) {
      return TabletAppBar(selected: selected, onSelect: onSelect);
    } else {
      return MobileAppBar(selected: selected, onSelect: onSelect);
    }
  }
}
