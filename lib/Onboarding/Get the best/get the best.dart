import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../const/const.dart';
import '../../const/images.dart';
import '../../createAccount/creat account/creataccount.dart';

class GetTheBest extends StatelessWidget {
  const GetTheBest({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(Images.Backgroundoerson,height: 50.h,width: 100.w,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Images.logo),
                    GestureDetector(
                      onTap: (){Get.to(CreatAccount());},
                      child: Text("skip"),
                    ),
                  ],)
              ],
            ),
            Image.asset(Images.choice,height: 30.h,width: 100.w,),
            AnimatedSmoothIndicator(activeIndex: 2, count:3,
              effect: ExpandingDotsEffect(
                activeDotColor:Static.botton,
              ),),
            SizedBox(height: 7,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor:Static.botton),
                onPressed: (){
                 Get.offAll(CreatAccount());
                }, child: Text("Get started",style: Static.next,)),
          ],
        ),
      ),
    );
  }
}
