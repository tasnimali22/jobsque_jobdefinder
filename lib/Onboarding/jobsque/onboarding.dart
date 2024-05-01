import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import 'controller.dart';

class Jobsque extends StatelessWidget {
  const Jobsque({super.key});

  @override
  Widget build(BuildContext context) {
    final cont = Get.put(JobsController());
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset("assets/images/Blur.png",height: 100.h,width: 100.w,),
            Center(
              child:Image.asset("assets/images/Logo.png"),

            ),
          ],),
      ),
    );
  }
}
