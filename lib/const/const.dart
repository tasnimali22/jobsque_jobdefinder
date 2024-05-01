import 'dart:core';
import 'dart:core';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Static{
  static const botton = Color(0xFF3366FF);
  static const blackColor = Colors.black;
  static const whiteColor = Colors.white;
  static const grayColor = Color(0xFF999999);
  static const babyblue = Color(0xFFA9BDE8);
  static const border = Color(0xFF3366FF);
  static const babygray = Color(0xFFD1D5DB);
  static const kohly = Color(0xFF02337A);


  static TextStyle next =TextStyle(
      fontSize: 20,color : Static.whiteColor);
  static TextStyle textblue =TextStyle(
      fontSize: 17,color : Static.botton);
  static TextStyle textgray =TextStyle(
      fontSize: 20,color : Static.grayColor);

  static const TextStyle accout= TextStyle(fontSize: 30);
  static const TextStyle creeat= TextStyle(fontSize: 17,color:Static.grayColor );


  static final boxDecoration=  BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
  );


  static TextStyle textstyblack =const TextStyle(color:Colors.black,fontSize:30,);
  static TextStyle textstyred =const TextStyle(color:Colors.red,fontSize:20,);
  static SizedBox sizedBoxH = const SizedBox(
    // height: 40.h,
    // Icon(icon),

  );
  static SizedBox sizedBoxW = SizedBox(
     width: 7.w,
  );


}