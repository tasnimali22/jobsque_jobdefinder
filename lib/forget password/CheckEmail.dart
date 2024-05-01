import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../const/Text.dart';
import '../const/const.dart';
import '../const/images.dart';
import 'NewPassword.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Images.checkemail),
            Text(Texts.email,style: Static.accout,),
            Text(Texts.checkemail,style: Static.creeat),
            SizedBox(height: 33.h,),
            ElevatedButton(
                onPressed: (){
                  Get.to(NewPasswod());
                  // serv.createAccount(context, "name", "email", "password");
                },
                style: ElevatedButton.styleFrom(backgroundColor: Static.botton),
                child: Text("Open email app",style: Static.next,)),

          ],
        ),
      ),
    );
  }
}
