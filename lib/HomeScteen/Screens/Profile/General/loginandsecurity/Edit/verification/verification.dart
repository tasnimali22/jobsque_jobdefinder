import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque_jobdefinder/HomeScteen/Screens/Profile/General/loginandsecurity/Edit/verification/phoneverification.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../../const/Text.dart';
import '../../../../../../../const/const.dart';

class Verification_sms extends StatefulWidget {
  const Verification_sms({super.key});

  @override
  State<Verification_sms> createState() => _Verification_smsState();
}

class _Verification_smsState extends State<Verification_sms> {
  bool switchval=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two_step verification'),
        centerTitle: true,
      ),
      body:Column(children: [

      Container(height:66 ,width:90.w,
        decoration: BoxDecoration(
          border: Border.all(width: 1.2,color: Static.grayColor),
          borderRadius: BorderRadius.circular(3),
        ),
        child: Row(
          children: [
            Text(Texts.twosetp),
            Switch(
                activeColor: Static.botton,
                value: this.switchval, onChanged: (bool value){
              setState(() => this.switchval= value);
            }
            ),
          ],
        ),),
        SizedBox(height: 3.h,),
        Text("Select a verification method",style:TextStyle(fontSize: 20),),
        DropdownButton<String>(
          items:[
            DropdownMenuItem(
              value: "WE",
                child: Text("WE")),
            DropdownMenuItem(
              value: "Etisalat",
                child: Text("Etisalat")),
            DropdownMenuItem(
              value: "Vodafone",
                child: Text("Vodafone")),
            DropdownMenuItem(
              value: "orange",
                child: Text("orange")),
          ], onChanged: (String? value) {
            setState(() {
            print("Seleted:$value");
            });

        },
          hint: Text("Telephone numper (SMS)"),
         ),
        SizedBox(height: 3.h,),
        Text(Texts.note,style:Static.textgray),
        Positioned(
          top: 724,
          child: MaterialButton(onPressed: (){
            Get.to(AddPhoneverification());
          },
            color: Static.botton,
            child: Text("Next",style: Static.next,),),),
      ]),
    );
  }
}