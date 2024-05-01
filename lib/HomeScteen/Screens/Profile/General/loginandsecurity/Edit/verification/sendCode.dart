
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../../const/Text.dart';
import '../../../../../../../const/const.dart';
import '../../../../../../Buttomnav/Botton_Nav_Bar.dart';

class SendCode extends StatefulWidget {
  const SendCode({super.key});

  @override
  State<SendCode> createState() => _SendCodeState();
}

class _SendCodeState extends State<SendCode> {

  List
  <String> _verificationCode = List<String>.filled(6, '');
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two_step verification'),
        centerTitle: true,
      ),
      body:Column(children: [
        Text("Enter the 6 digit code",style:TextStyle(fontSize:25)),
        Text(Texts.code,style:Static.textgray),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            6,
                (index) => SizedBox(
              width: 50,
              height: 50,
              child: TextFormField(
                controller: TextEditingController(text: _verificationCode[index]),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  if (value.length <= 1) {
                    setState(() {
                      _verificationCode[index] = value;
                      if (value.isNotEmpty && index < 5) {
                        FocusScope.of(context).nextFocus();
                      }
                    });
                  } else {
                    setState(() {
                      _controller.clear();
                      _verificationCode[index] = value.substring(0, 1);
                      if (index < 5) {
                        FocusScope.of(context).nextFocus();
                      }
                    });
                  }
                },),
            ),
          ),
        ),

        Row(
          children: [
            Text("Resend code",style:Static.textgray),
            Text("42s",style:Static.textblue),
          ],),
        SizedBox(height: 20.h,),
        Positioned(
          top: 724,

          child: MaterialButton(onPressed: (){
            Get.to(Button_Nav_Bar());
          },
            color: Static.botton,
            child: Text("Verify",style: Static.next,),),
        ),
      ]),
    );
  }
}