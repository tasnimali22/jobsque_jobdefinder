
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../../const/const.dart';
import '../../../controller/JobController.dart';
import '../Apply job/Biodata.dart';
import '../Saved/Saved.dart';

class Active extends StatefulWidget {
  const Active({super.key});

  @override
  State<Active> createState() => _ActiveState();
}

class _ActiveState extends State<Active> {
  bool isbookmark =false;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(JobController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(height: 33,width: 100.w,
            color: Static.babygray,
            child: Text("3 Jobs",style: TextStyle(fontSize: 22,color: Static.grayColor),),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: controller.list.length,
            separatorBuilder: (BuildContext context, int index) {
              return Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Static.botton,
                              child: Icon(Icons.check_rounded,color: Static.whiteColor,),
                            ),
                            Text("Biodata",style: TextStyle(color: Static.botton),),
                          ],),

                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Static.babygray,
                              child: Text("2"),
                            ),
                            Text("Type of work"),
                          ],),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Static.babygray,
                              child: Text("3"),

                            ),
                            Text("Upload portfololio"),
                          ],),
                      ],),
                    SizedBox(height: 4.h,),
                    Divider(),
                  ],

              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap:(){
                      Get.to(Apply_Biodata());
                  },
                    child: ListTile(
                      leading: Image.network(controller.list[index]!.image!,height: 7.h,width: 7.w,),
                      title: Text(controller.list[index].name??"",style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.w500),),
                      subtitle: Text(controller.list[index].compName??""),
                      trailing:IconButton(icon:isbookmark?
                      Icon(Icons.bookmark_outline):
                      Icon(Icons.bookmark),
                        onPressed: () {
                        setState(() {
                          isbookmark=!isbookmark;
                        });
                        }, ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Static.babyblue,
                        ),child: Text("FullTime"),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Static.babyblue,
                        ),child: Text("Remote"),
                      )
                    ],),
                  )
                ],);




            },
          ),


        ],),
      ),
    );
  }}