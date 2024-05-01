import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../const/Text.dart';
import '../const/const.dart';
import '../const/images.dart';
import '../login/login.dart';
import 'CheckEmail.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: Icon(Icons.arrow_back), onPressed: () {  },),
          Image.asset(Images.logo),
        ],),
            SizedBox(height: 2.h,),
            Text(Texts.pass,style: Static.accout),SizedBox(height: 2.h,),
            Text(Texts.rest,style: Static.creeat),
            SizedBox(height: 5.h,),
          TextField(
            keyboardType:TextInputType.text,
            controller: TextEditingController(),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.email_outlined),
                labelText: "Enter your Email...",
                hintText:  "Email"
        
            ),
          ),
          SizedBox(height: 37.h,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Texts.resetpass),
              GestureDetector(
                child: Text("Login",style: Static.textblue,),
                onTap:(){Get.to(Login());} ,
              )
            ],),
        
          ElevatedButton(
              onPressed: (){
            Get.to(CheckEmail());
            // serv.createAccount(context, "name", "email", "password");
          },
              style: ElevatedButton.styleFrom(backgroundColor: Static.botton),
              child: Text("Request password reset",style: Static.next,)),
            ]),
      ),
    ),
      ),
    );
  }
}
