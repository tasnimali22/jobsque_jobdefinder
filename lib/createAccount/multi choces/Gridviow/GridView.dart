import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../const/Text.dart';
import '../../../const/const.dart';
import '../../../const/images.dart';
import '../Country.dart';

class MultiChoces extends StatelessWidget {
  const MultiChoces({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(Texts.intreset,style: Static.accout),
                Text(Texts.tellinterested,style: Static.creeat),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                  Image.asset(Images.Design,width: 30.w,),
                  Image.asset(Images.Ilustrator,width: 30.w,),
                ],),Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Image.asset(Images.Developer,width: 30.w,),
                  Image.asset(Images.Management,width: 30.w,),
                ],), Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Image.asset(Images.Information,width: 30.w,),
                  Image.asset(Images.Research,width: 30.w,),
                ],),
                SizedBox(height: 3.h,),
                MaterialButton( onPressed: (){
                  Get.off(Country());
                },
                   color: Static.botton,
                    child: Text("Login",style: Static.next,)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
