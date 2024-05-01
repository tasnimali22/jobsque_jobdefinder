import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class Detalis extends StatelessWidget {
   Detalis({super.key});
  @override
  Widget build(BuildContext context) {
    // final alljob = Get.put(JobController());

    return
       SingleChildScrollView(
           child:  Column(children: [
        Padding(padding: EdgeInsets.all(7)),
        SizedBox(height: 2.h,),
        Text("Job Description"),

        Text("Job Description"),
        Text("Skill Required"),
      ],),

    );
  }
}
