import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../const/Text.dart';
import '../../const/const.dart';
import '../../const/images.dart';
import '../../login/login.dart';
import 'Country.dart';

class SetUp extends StatelessWidget {
  const SetUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
            IconButton(icon:Icon(Icons.arrow_back), onPressed: () {
              Get.to(Country());
            },),
          ],),
          Padding( padding: EdgeInsets.all(50.0),),
          Image.asset(Images.Success),
          Text(Texts.setup,style: Static.accout),
          Text(Texts.custom,style: Static.creeat),
          Padding( padding: EdgeInsets.all(100.0),),
          MaterialButton(onPressed: (){
            Get.to(Login());
          },
              color: Static.botton,
              child: Text("Get Started",style: Static.next,)),

        ],),
      )
    );
  }
}
