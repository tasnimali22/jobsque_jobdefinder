import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque_jobdefinder/HomeScteen/Screens/detelies/people.dart';
import 'package:sizer/sizer.dart';
import '../../../const/const.dart';
import '../../../controller/JobController.dart';
import '../../../controller/showcompanyController.dart';
import '../allJobs/home.dart';
class Company extends StatelessWidget {
  Company({super.key,required this.index});
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
                Container(
                    width: 107,height: 40,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Static.kohly,
                    ),
                    child: Text("Company")),
                Text("People"),
              ],),
            ),

            SizedBox(height: 16.0),
    GetBuilder<ControllerCompany>(
    init: ControllerCompany(),
    builder: (controller) {
      return ListView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: showcompany.show.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              children: [
            SizedBox(height: 16.0),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
            height: 60,width: 45.w,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Static.botton,width: 2.0),
            ),
            child:Column(children: [
            Text("email",style:TextStyle(color: Static.grayColor,)),
            Text(showcompany.show[index]!.email!),
            ],) ,
            ),
            Container(
            height: 60,width: 45.w,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
            border: Border.all(color: Static.botton,width: 2.0),
            ),
            child:Column(children: [
            Text("website",style:TextStyle(color: Static.grayColor,)),
            Text(showcompany.show[index]!.website!),
            ],) ,
            ),
            ],),
            SizedBox(height: 16.0),
            Text("About Company", style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            ),),
            Text(
              showcompany.show[index]!.about!,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
              ]);
          });
    }),
            SizedBox(height: 16.0),
            MaterialButton(onPressed: (){Get.to(People(index: index,));},child: Text("Apply Now"
            ,style: Static.next,),color: Static.botton,),
          ],),
      ),
    );

  }
}
