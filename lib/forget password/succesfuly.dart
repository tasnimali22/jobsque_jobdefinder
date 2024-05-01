import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../const/Text.dart';
import '../const/const.dart';
import '../const/images.dart';

class Succesfuly extends StatelessWidget {
  const Succesfuly({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Images.succesful),
              Text(Texts.succesful,style: Static.accout,),
              Text(Texts.changesussful,style: Static.creeat),
              SizedBox(height: 33.h,),
              ElevatedButton(
                  onPressed: (){
                   // Get.off(MultiChoces());
                    // serv.createAccount(context, "name", "email", "password");
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Static.botton),
                  child: Text("Open email app",style: Static.next,)),

            ],),
        ),
    );
  }
}
