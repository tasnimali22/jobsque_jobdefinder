import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../const/const.dart';
import '../../../../../Buttomnav/Botton_Nav_Bar.dart';

class ChangePassword extends StatefulWidget {
   ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool showpass =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Change Password'),
    centerTitle: true,
    ),
    body:Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      SizedBox(height: 2.h,),
      Text("Enter your old password",style:TextStyle(fontSize: 23),),
      TextField(
        keyboardType:TextInputType.text,
        obscureText: true,
        controller: TextEditingController(),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: Icon(Icons.security),
            suffixIcon: IconButton(onPressed: () {
              setState(() {
                showpass=showpass;
              });
            },
              icon: Icon(Icons.remove_red_eye,
                  color: showpass ? Static.botton :Static.grayColor),),
            labelText: "password",
            hintText:  "password"

        ),
      ),
      SizedBox(height: 2.h,),
      Text("Enter your new password",style:TextStyle(fontSize: 23),),
      TextField(
        keyboardType:TextInputType.text,
        obscureText: true,
        controller: TextEditingController(),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: Icon(Icons.security),
            suffixIcon: IconButton(onPressed: () {
              setState(() {
                showpass=showpass;
              });
            },
              icon: Icon(Icons.remove_red_eye,
                  color: showpass ? Static.botton :Static.grayColor),),
            labelText: "password",
            hintText:  "password"

        ),
      ),
      SizedBox(height: 2.h,),
      Text("Confirm your new password",style:TextStyle(fontSize: 23),),
      TextField(
        keyboardType:TextInputType.text,
        obscureText: true,
        controller: TextEditingController(),
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: Icon(Icons.security),
            suffixIcon: IconButton(onPressed: () {
              setState(() {
                showpass=showpass;
              });
            },
              icon: Icon(Icons.remove_red_eye,
                  color: showpass ? Static.botton :Static.grayColor),),
            labelText: "password",
            hintText:  "password"

        ),
      ),
      Positioned(
          top: 724,
          left: 24,
          child: MaterialButton(onPressed: (){
            Get.to(Button_Nav_Bar());
          },
            color: Static.botton,
            child: Text("Next",style: Static.next,),),
      ),
    ]),
    );
    }
}