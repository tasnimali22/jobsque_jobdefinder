import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../../../const/const.dart';
import 'Edit/Emailaddress.dart';
import 'Edit/changePassword.dart';
import 'Edit/phonenumper.dart';
import 'Edit/verification/Two_setp verification.dart';

class LOginAndSecurity extends StatelessWidget {
  const LOginAndSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('LOgin and security'),
        centerTitle: true,
      ),
      body:Column(children: [
        Container(height: 36,width: 100.w,
          color: Static.babygray,
          child: Text("Accont address",style: TextStyle(fontSize: 25,color: Static.grayColor),),
        ),
        Container(width: 100.w,height:68 ,
          child:
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Email address",style: TextStyle(
                     fontSize: 17),),

             IconButton(onPressed: () {
               Get.to(Emailaddress());
            }, icon: Icon(Icons.arrow_forward),),
               ],),
          ),
        Divider(),
        Container(width: 100.w,height:68 ,
          child:
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Phone Numper",style: TextStyle(
                     fontSize: 17),),
             IconButton(onPressed: () {
               Get.to(PhoneNumper());
            }, icon: Icon(Icons.arrow_forward),),
               ],),
          ),
        Divider(), Container(width: 100.w,height:68 ,
          child:
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Change Password",style: TextStyle(
                     fontSize: 17),),
             IconButton(onPressed: () {
               Get.to(ChangePassword());
            }, icon: Icon(Icons.arrow_forward),),
               ],),
          ),
        Divider(), Container(width: 100.w,height:68 ,
          child:
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Two_step verification",style: TextStyle(
                     fontSize: 17),),

                 IconButton(onPressed: () {
                   Get.to(Two_stepVerification());
                             }, icon: Icon(Icons.arrow_forward),),

               ],),
          ),
        Divider(), Container(width: 100.w,height:68 ,
          child:
             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Face ID",style: TextStyle(
                     fontSize: 17),),
             IconButton(onPressed: () {
               // Get.to(EditProfile());
            }, icon: Icon(Icons.arrow_forward),),
               ],),
          ),
        Divider(),
      ],)
    );
  }
}
