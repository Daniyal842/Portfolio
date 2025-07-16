import 'package:flutter/material.dart';
import 'package:portfolio/views/page_2/page_2_desktop.dart';

class ResponsiveLayoutWidget extends StatelessWidget {
  Widget desktop;
  Widget tablet;
  Widget mobile;
  ResponsiveLayoutWidget(
      {super.key,
      required this.desktop,
      required this.tablet,
      required this.mobile});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          print("Loading: Mobile layout");
          return mobile;
        } else if (constraints.maxWidth < 1100) {
          print("Loading: Tablet layout");
          return tablet;
        } else {
          print("Loading: Desktop layout");
          return desktop;
        }
      },
    );
  }
}
