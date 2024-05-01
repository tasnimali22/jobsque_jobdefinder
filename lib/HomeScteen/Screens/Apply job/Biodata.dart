import 'package:country_list_picker/country_list_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque_jobdefinder/HomeScteen/Screens/Apply%20job/typeOfWork.dart';
import 'package:sizer/sizer.dart';

import '../../../const/const.dart';
import '../../../controller/JobController.dart';
import '../allJobs/home.dart';
import '../detelies/people.dart';

class Apply_Biodata extends StatelessWidget {
   Apply_Biodata({super.key});

  @override
  Widget build(BuildContext context) {
    final allJob = Get.put(JobController());
    var picker;
    return Scaffold(
      appBar: AppBar(
        title: Text('Apply Job'),centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(children: [
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
          SizedBox(height: 3.h,),
          Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Biodata",style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.bold,),),
              Text("Fill in your bio data correctly",style: TextStyle(
                color: Static.grayColor,
                ),),
              SizedBox(height: 3.h,),
              Text("Full Name",style: TextStyle(
                fontSize: 23.0,
              ),),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType:TextInputType.text,
              controller: TextEditingController(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.person_outline_rounded,color: Static.grayColor,),
                  hintText:  "name"
              ),
            ),
          ),
          SizedBox(height: 2.h,),
          Text("Email",style: TextStyle(
            fontSize: 23.0,
          ),),
          TextField(
            keyboardType:TextInputType.text,
            controller: TextEditingController(),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.email_outlined,color: Static.grayColor,),
                hintText:  "email"
            ),
          ),
          SizedBox(height: 2.h,),
          Text("No.Handphone",style: TextStyle(
            fontSize: 23.0,
          ),),
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
            ],
          ),
          MaterialButton(onPressed: (){Get.to(TypeOfwork());},color: Static.botton,child: Text("Next"),),

        ],),
      ) ,
    );
  }
}
