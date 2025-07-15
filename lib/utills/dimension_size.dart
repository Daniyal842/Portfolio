

import 'package:flutter/cupertino.dart';
import 'package:portfolio/utills/media_queries.dart';

class GetSize
{
  static getSmall(BuildContext context){
    return GetMediaQuary.getHight(context)* 0.02;
  }
  static getMediam(BuildContext context){
    return GetMediaQuary.getHight(context)*0.03;
  }
  static getLarge(BuildContext context){
    return GetMediaQuary.getHight(context)*0.04;
  }
  static getSLarge(BuildContext context){
    return GetMediaQuary.getHight(context)*0.05;
  }
}