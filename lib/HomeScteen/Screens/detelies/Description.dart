import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../const/const.dart';
import '../../../controller/JobController.dart';
import '../../../data.dart';
import '../allJobs/home.dart';
import 'company.dart';
class Description extends StatelessWidget {
   Description({super.key,required this.index});
   int index;
   @override
  Widget build(BuildContext context) {
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
           child: Image.network(allJob.list[index]!.image!)),
     Text(
       allJob.list[index]!.name!,
     style: TextStyle(
     fontSize: 18.0,
     fontWeight: FontWeight.bold,
     ),),Text(
       allJob.list[index]!.location!,),
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
          Container(
        width: 107,height: 40,
        decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Static.kohly,
        ),
              child: Text("Description")),
          Text("Company"),
          Text("People"),
     ],),

     ),
       SizedBox(height: 16.0),
       Text("Job Description", style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),),
        Text(
        allJob.list[index]!.jobDescription!,
     style: TextStyle(
     fontSize: 16.0,
     ),
     ),
     SizedBox(height: 16.0),
        Text("Skill Requried", style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),),
        Text(
           allJob.list[index]!.jobSkill!,
          style: TextStyle(
            fontSize: 16.0,
          ),
     ),
    
     SizedBox(height: 16.0),
    MaterialButton(onPressed: (){Get.to(Company(index: index,));},child: Text("Apply Now",style:Static.next),
      color: Static.botton,),
     ],),
     ),
     );

  }
}
