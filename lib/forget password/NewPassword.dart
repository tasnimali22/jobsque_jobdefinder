import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque_jobdefinder/forget%20password/succesfuly.dart';
import 'package:sizer/sizer.dart';

import '../const/Text.dart';
import '../const/const.dart';
import '../const/images.dart';
import 'CheckEmail.dart';

class NewPasswod extends StatefulWidget {
  const NewPasswod({super.key});

  @override
  State<NewPasswod> createState() => _NewPasswodState();
}

class _NewPasswodState extends State<NewPasswod> {
  @override
  Widget build(BuildContext context) {
    bool showpass =false;

    return SafeArea(
      child: Scaffold(
        body:  SingleChildScrollView(
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
            Text(Texts.newpass,style: Static.accout),SizedBox(height: 2.h,),
            Text(Texts.setnewpass,style: Static.creeat),
            SizedBox(height: 3.h,),
              TextField(
                keyboardType:TextInputType.text,
                obscureText: true,
                controller: TextEditingController(),
                decoration: InputDecoration(
                    helperText: "password must be at least 8 characters",
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
              SizedBox(height: 3.h,),
              TextField(
                keyboardType:TextInputType.text,
                obscureText: true,
                controller: TextEditingController(),
                decoration: InputDecoration(
                    helperText: "Both password must match",
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
              SizedBox(height: 17.h,),
              ElevatedButton(
                  onPressed: (){
                    Get.to(Succesfuly());
                    // serv.createAccount(context, "name", "email", "password");
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Static.botton),
                  child: Text("reset password",style: Static.next,)),
                
            ]),
        ),
      ),
    );
  }
}
