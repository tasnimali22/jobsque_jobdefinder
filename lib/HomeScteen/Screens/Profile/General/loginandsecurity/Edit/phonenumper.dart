import 'package:country_list_picker/country_list_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../const/const.dart';
import '../../../../../Buttomnav/Botton_Nav_Bar.dart';

class PhoneNumper extends StatefulWidget {
  const PhoneNumper({super.key});

  @override
  State<PhoneNumper> createState() => _PhoneNumperState();
}

class _PhoneNumperState extends State<PhoneNumper> {
  bool switchval=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PhoneNumper'),
        centerTitle: true,
      ),
      body:Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Text("Main phone numper",style: TextStyle(
          fontSize: 20),),
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
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Use the phone number to reset your password",style:Static.textgray),
            Switch(
              activeColor: Static.botton,
                value: this.switchval, onChanged: (bool value){
              setState(() => this.switchval= value);
            }),
          ],),
        Positioned(
          top: 724,
          left: 24,
          child: MaterialButton(onPressed: (){
            Get.to(Button_Nav_Bar());
          },
            color: Static.botton,
            child: Text("Save",style: Static.next,),),
        ),
      ]),
    );
  }
}