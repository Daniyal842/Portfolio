

import 'package:flutter/cupertino.dart';

import 'media_queries.dart';

class GetSize
{
  static double getSmall(BuildContext context) {
    return GetMediaQuary.getWidth(context) * 0.01;
  }

  static double getMediam(BuildContext context) {
    return GetMediaQuary.getWidth(context) * 0.015;
  }

  static double getLarge(BuildContext context) {
    return GetMediaQuary.getWidth(context) * 0.02;
  }

  static double getSLarge(BuildContext context) {
    return GetMediaQuary.getWidth(context) * 0.025;
  }
}