import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../const/const.dart';
import '../../../../../Buttomnav/Botton_Nav_Bar.dart';

class Emailaddress extends StatelessWidget {
  const Emailaddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email address'),
        centerTitle: true,
      ),
      body:Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Text("Main e-mail address",style: TextStyle(
            fontSize: 17),),
        TextField(
          keyboardType:TextInputType.text,
          controller: TextEditingController(),
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(Icons.email_outlined),
              labelText: "Email",
              hintText:  "Email"
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