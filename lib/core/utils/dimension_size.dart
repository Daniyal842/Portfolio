

import 'package:flutter/cupertino.dart';

import 'media_queries.dart';

class GetSize
{
  static double getSmall(BuildContext context) {
    return GetMediaQuary.getWidth(context) * 0.015;
  }

  static double getMediam(BuildContext context) {
    return GetMediaQuary.getWidth(context) * 0.018;
  }

  static double getLarge(BuildContext context) {
    return GetMediaQuary.getWidth(context) * 0.022;
  }

  static double getSLarge(BuildContext context) {
    return GetMediaQuary.getWidth(context) * 0.026;
  }
}

class GetSize2
{
  static double getSmall(BuildContext context) {
    return GetMediaQuary.getHight(context) * 0.015;
  }

  static double getMediam(BuildContext context) {
    return GetMediaQuary.getHight(context) * 0.018;
  }

  static double getLarge(BuildContext context) {
    return GetMediaQuary.getHight(context) * 0.022;
  }

  static double getSLarge(BuildContext context) {
    return GetMediaQuary.getHight(context) * 0.026;
  }
}