import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:sizer/sizer.dart';

import '../../../../../const/const.dart';
import '../../../../../data.dart';
import 'Controllerlanguage.dart';

class Languages extends StatelessWidget {
  const Languages({super.key});

  @override
  Widget build(BuildContext context) {
    final cintroller =Get.put(ControlLanguage());
    return Scaffold(
      appBar: AppBar(

        title: const Text('Language'),
        centerTitle: true,
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          height: MediaQuery.of(context).size.height,
          child:
    ListView.separated(
                itemCount: countycode.length,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CountryFlag.fromLanguageCode(
                              countycode[index],
                                width: 6.w,
                                height: 6.h,
                            ),
                            Text(county[index],style:TextStyle(fontSize: 23),),
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





                },
              ),
      ),
    );
  }
}
