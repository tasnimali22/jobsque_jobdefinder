import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../../const/Text.dart';
import '../../../const/const.dart';
import '../../../const/images.dart';
import '../../../controller/JobController.dart';
import '../../Buttomnav/Botton_Nav_Bar.dart';

class Upload_Success extends StatelessWidget {
   Upload_Success({super.key});

  @override
  Widget build(BuildContext context) {
    final allJob = Get.put(JobController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Apply Job"),
        centerTitle: true,
      ),
      body: Center(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children:[
          Image.asset(Images.Portfolio),
          Text(Texts.portfolio,style: Static.accout,),
          Text(Texts.message,style: Static.creeat,),
          SizedBox(height: 17.h,),
          MaterialButton(color:Static.botton,
            onPressed: (){Get.to(Button_Nav_Bar());},
            child: Text("Back to home",style: TextStyle(fontSize: 17),),
          )
        ]),
      ),),
    );
  }
}
