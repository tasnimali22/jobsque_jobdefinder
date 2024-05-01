import 'package:country_list_picker/country_list_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque_jobdefinder/HomeScteen/Screens/Profile/General/loginandsecurity/Edit/verification/sendCode.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../../const/const.dart';

class AddPhoneverification extends StatefulWidget {
  const AddPhoneverification({super.key});

  @override
  State<AddPhoneverification> createState() => _AddPhoneverificationState();
}

class _AddPhoneverificationState extends State<AddPhoneverification> {
  bool showpass =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two_step verification'),
        centerTitle: true,
      ),
      body:Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Text("Add phone numper",style: TextStyle(fontSize: 25),),
        Text("We will send a verification code to this numper",style: Static.textgray,),
        SizedBox(height: 1.5.h,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CountryListPicker(
            onCountryChanged: ((value) {
              // do something
            }),
            onChanged: (value) {
              // do something
            },
            initialCountry: Countries.Egypt,
            language: Languages.Arabic,
            // isShowDownIcon: picker.isDownIcon,
            isShowCountryName: false,   // if you need to hide country title
            displayName: Names.offical,  // if you need to display country offical name
          ),
        ),
        SizedBox(height: 2.h,),
        Text("Enter your password",style: TextStyle(fontSize: 25),),
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
        SizedBox(height: 20.h,),
        Positioned(
          top: 724,
          left: 24,
          child: MaterialButton(onPressed: (){
            Get.to(SendCode());
          },
            color: Static.botton,
            child: Text("Send Code",style: Static.next,),),
        ),
      ]),
    );
  }
}