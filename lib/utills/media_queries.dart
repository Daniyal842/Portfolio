import 'package:flutter/cupertino.dart';

class GetMediaQuary
{
  static getHight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
  static getWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
}