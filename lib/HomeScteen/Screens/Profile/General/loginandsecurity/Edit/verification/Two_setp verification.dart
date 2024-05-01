import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque_jobdefinder/HomeScteen/Screens/Profile/General/loginandsecurity/Edit/verification/verification.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../../const/Text.dart';
import '../../../../../../../const/const.dart';
import '../../../../../../../const/images.dart';

class Two_stepVerification extends StatefulWidget {
  const Two_stepVerification({super.key});

  @override
  State<Two_stepVerification> createState() => _Two_stepVerificationState();
}

class _Two_stepVerificationState extends State<Two_stepVerification> {
  bool switchval = true;
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
            }),
          ],
        ),),
      ListTile(
        leading: Image.asset(Images.secure),
        subtitle: Text(Texts.twosetpverification,style: Static.textgray,),
      ),
        ListTile(
        leading: Image.asset(Images.lock),
        subtitle: Text(Texts.verification,style: Static.textgray,),
      ),
      Positioned(
          top: 724,
          child: MaterialButton(onPressed: (){
            Get.to(Verification_sms());
          },
            color: Static.botton,
            child: Text("Next",style: Static.next,),),),
      ]),
    );
  }
}