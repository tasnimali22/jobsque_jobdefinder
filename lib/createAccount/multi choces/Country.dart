import 'package:country_flags/country_flags.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque_jobdefinder/createAccount/multi%20choces/setup.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:sizer/sizer.dart';

import '../../HomeScteen/Screens/Profile/General/language/Controllerlanguage.dart';
import '../../const/Text.dart';
import '../../const/const.dart';
import '../../data.dart';



class Country extends StatefulWidget {
   Country({super.key});

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {

  @override
  Widget build(BuildContext context) {
    final cintroller =Get.put(ControlLanguage());

    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children:[
                  Text(Texts.country,style: Static.accout),
                  Text(Texts.location,style: Static.creeat),
              SizedBox(height: 3.h,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    height: MediaQuery.of(context).size.height,
                    child:
                    GridView.builder(
                      itemCount: countycode.length,

                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                            children: [
                              Row(
                                children: [
                                  CountryFlag.fromLanguageCode(
                                    countycode[index],
                                    width: 4.w,
                                    height: 4.h,
                                  ),
                                  Text(county[index],style:TextStyle(fontSize: 12),),
                                ],),
                              RoundCheckBox(
                                  onTap: (selected) {
                                    cintroller.selectJobType(selected!, index);
                                  },
                                  isChecked: cintroller.currentindex == index
                                      ? cintroller.selectjobtype
                                      : false,
                                  checkedColor: Static.whiteColor,
                                  checkedWidget: Container(
                                    decoration: BoxDecoration(
                                        color: Static.botton,
                                        shape: BoxShape.circle),
                                    margin: EdgeInsets.all(2),
                                  ),
                                  size: 20,
                                  border: Border.all(
                                    color: (cintroller.currentindex == index &&
                                        cintroller.selectjobtype == true)
                                        ? Static.botton
                                        : Static.blackColor.withOpacity(0.4),
                                  ))
                            ]);
                      }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    ),
                  ),
                  MaterialButton(onPressed: (){
                    Get.to(SetUp());
                  },
                      color: Static.botton,
                      child: Text("Login",style: Static.next,)),

                ],),
            ),
          )),
    );
  }
}
