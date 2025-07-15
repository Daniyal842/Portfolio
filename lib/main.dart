import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/views/main-screen.dart';
import 'package:portfolio/views/page_1/main-page-1.dart';
import 'package:portfolio/views/page_1/page-1-desktop.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
