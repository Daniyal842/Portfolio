import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app-colors.dart';

import '../utils/media_queries.dart';

class CustomTextForm extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final TextInputType keyboardType;
  final TextEditingController? controller;

  const CustomTextForm({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      maxLines: maxLines,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: AppColors.background2,
        contentPadding: EdgeInsets.symmetric(
          horizontal: GetMediaQuary.getWidth(context) * 0.02,
          vertical: GetMediaQuary.getHight(context) * 0.02,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(GetMediaQuary.getHight(context) * 0.015),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(GetMediaQuary.getHight(context) * 0.015),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(GetMediaQuary.getHight(context) * 0.015),
          borderSide: const BorderSide(color: AppColors.redAccent),
        ),
      ),
    );
  }
}
