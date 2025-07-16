import 'package:flutter/material.dart';
import 'package:portfolio/core/widget/responsive-layout.dart';
import 'package:portfolio/views/page_1/page-1-desktop.dart';
import 'package:portfolio/views/page_1/page-1-mobile.dart';
import 'package:portfolio/views/page_1/page-1-tablet.dart';

class MainPageOne extends StatelessWidget {
  const MainPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutWidget(
      desktop: DesktopPageOne(),
      tablet: TabletPageOne(),
      mobile: MobilePageOne(),
    );
  }
}
