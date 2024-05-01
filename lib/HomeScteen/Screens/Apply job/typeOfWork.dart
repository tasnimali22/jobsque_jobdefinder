import 'package:country_list_picker/country_list_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque_jobdefinder/HomeScteen/Screens/Apply%20job/portfoloi/uploadPortfolio.dart';
import 'package:sizer/sizer.dart';

import '../../../const/const.dart';
import '../../../controller/JobController.dart';
import 'Biodata.dart';

class TypeOfwork extends StatefulWidget {

  TypeOfwork({super.key});

  @override
  State<TypeOfwork> createState() => _TypeOfworkState();
}

class _TypeOfworkState extends State<TypeOfwork> {
  late int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    final allJob = Get.put(JobController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Apply Job'),
      centerTitle: true,),
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
                    foregroundColor: Static.whiteColor,
                    backgroundColor: Static.botton,
                    child: Text("2",style:TextStyle(color: Static.whiteColor)),
                  ),
                  Text("Type of work",style: TextStyle(color: Static.botton),),
                ],),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Static.babygray,
                    child: Text("3"),
                  ),
                  Text("Upload portfololio",),
                ],),
            ],),
          SizedBox(height: 3.h,),
          Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Type of work",style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.bold,),),
              Text("Fill in your bio data correctly",style: TextStyle(
                color: Static.grayColor,
              ),),
              SizedBox(height: 3.h,),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2,color: Static.babygray),
          borderRadius: BorderRadius.circular(5),
          color: selectedRadio == 1 ? Static.babyblue : Static.whiteColor,
            ),
            child: RadioListTile(
              value: 1,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
              title: Text('Senior UI Designer',style: TextStyle(fontSize: 20),),
              subtitle: Text("CV.pdf . porfolio.pdf",style: TextStyle(color:Static.grayColor,fontSize:12),),
            ),
          ),
              SizedBox(height: 1.5.h,),
              Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Static.babygray),
                borderRadius: BorderRadius.circular(5),
            color: selectedRadio == 2 ? Static.babyblue : Static.whiteColor,
    ),
            child: RadioListTile(
              value: 2,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
              title: Text('Test Engineer',style: TextStyle(fontSize: 20),),
              subtitle: Text("CV.pdf . porfolio.pdf",style: TextStyle(color:Static.grayColor,fontSize:12),),
            ),
          ),
              SizedBox(height: 1.5.h,),
              Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Static.babygray),
                borderRadius: BorderRadius.circular(5),
            color: selectedRadio == 3 ? Static.babyblue : Static.whiteColor,
    ),
            child: RadioListTile(
              value: 3,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
              title: Text('Machine Learning Engineer',style: TextStyle(fontSize: 20),),
              subtitle: Text("CV.pdf . porfolio.pdf",style: TextStyle(color:Static.grayColor,fontSize:12),),
            ),
          ),
              SizedBox(height: 1.5.h,),
              Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Static.babygray),
                borderRadius: BorderRadius.circular(5),
            color: selectedRadio == 4 ? Static.babyblue : Static.whiteColor,
    ),
            child: RadioListTile(
              value: 4,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val!);
              },
              title: Text('Flutter Developer',style: TextStyle(fontSize: 20),),
              subtitle: Text("CV.pdf . porfolio.pdf",style: TextStyle(color:Static.grayColor,fontSize:12),),
            ),
          ),
              SizedBox(height: 3.h,),

            ]),
          MaterialButton(onPressed: (){Get.to(Upload_portfolio());},color: Static.botton,child: Text("Next"),),

        ],),
     ] ) ,
      ),
    );
  }
}
