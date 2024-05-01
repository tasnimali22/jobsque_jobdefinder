import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../const/const.dart';
import '../../../controller/JobController.dart';
import '../../../controller/showcompanyController.dart';
import '../Apply job/Biodata.dart';
import '../allJobs/home.dart';
class People extends StatelessWidget {
  People({super.key,required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    final showcompany = Get.put(ControllerCompany());
    final allJob = Get.put(JobController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Detilies'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 48,width: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child:
                Image.network(allJob.list[index]!.image!)
            ),
            Text(
              allJob.list[index]!.name!,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
            Text(allJob.list[index]!.location!,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(onPressed: (){},child: Text("Full Time"),color: Static.babyblue,),
                MaterialButton(onPressed: (){},child: Text("Onside"),color: Static.babyblue,),
                MaterialButton(onPressed: (){},child: Text("senior"),color: Static.babyblue,),
              ],),
            SizedBox(height: 16.0),
            Container(
              width: 327,height: 46,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Static.grayColor,
              ) ,child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Description"),
                Text("Company"),
                Container(
                    width: 107,height: 40,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Static.kohly,
                    ),
                    child: Text("People")),
              ],),
            ),
            SizedBox(height: 16.0),
            Image.asset("assets/images/members.png"),
            SizedBox(height: 16.0),
            MaterialButton(onPressed: (){Get.to(Apply_Biodata());},child: Text("Apply Now",style: Static.next,),
              color: Static.botton,),
          ],),
      ),
    );

  }
}
