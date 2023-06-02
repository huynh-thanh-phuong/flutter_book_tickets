import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AppLayout{
  static getSize (BuildContext context){
    return MediaQuery.of(context).size;
  }
  static getScreenHeight(){
    return Get.height;
  }
  static getCreenWidth(){
    return Get.width;
  }
  static getHeight(int pixels){
    double x = getScreenHeight()/pixels;
    return getScreenHeight()/x;
  }
  static getWidth(int pixels){
    double x = getCreenWidth()/pixels;
    return getCreenWidth()/x;
  }
}