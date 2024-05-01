import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobsque_jobdefinder/HomeScteen/Screens/Profile/General/porfolioprofile/portfolioController.dart';
import 'package:sizer/sizer.dart';

import '../../../../../const/const.dart';
import '../Editprofile/Complete_profile/Complete_fofity.dart';

class PortfolioProfile extends StatelessWidget {
  const PortfolioProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final profolio =Get.put(ProfolioController());

    return Scaffold(
      appBar: AppBar(

        title: const Text('profolio'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Text("Add portfolio here"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(() => profolio.image.value.isEmpty?
          Container(height: 221,width: 372,
              decoration: BoxDecoration(
                color: Static.babyblue,
                borderRadius: BorderRadius.circular(7),
                border: Border.all(width: 2,color: Static.botton),
              ),
              child:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){
                    profolio.selectImage(source:ImageSource.gallery);
                  }, icon: Icon(Icons.save,color:Static.botton)),
                  Text("Upload your other file",style: TextStyle(fontSize: 23.0,
                  ),),
                  Text("Max.file size 10MB"),
                  ElevatedButton(onPressed: (){profolio.selectImage(source:ImageSource.gallery);
                  }, child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.file_upload_outlined),
                      Text("Add file")
                    ],),
                    style: ElevatedButton.styleFrom(backgroundColor: Static.babyblue),
                  )
                ],) ):
          Image.file(File(profolio.image.value.toString()),),
          ),
        ),
          SizedBox(height: 2.h,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(() => profolio.image.value.isEmpty?
            Container(height: 74,width: 372,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(width: 2,color: Static.botton),
                ),
                child: ListTile(
                  leading: IconButton(onPressed: () {
                    profolio.selectImage(source:ImageSource.gallery);
                  }, icon: Icon(Icons.picture_as_pdf,color: Colors.red,),),
                  title: Text("Test Engineer",style: TextStyle(fontSize: 23.0,
                  ),),
                  subtitle: Text("CV.pdf300KB"),
                  trailing:
                  Icon(Icons.dangerous_outlined,color: Colors.red,),

                )):
            Image.file(File(profolio.image.value.toString()),),
            ),
          ),
          SizedBox(height: 2.h,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(() => profolio.image.value.isEmpty?
            Container(height: 74,width: 372,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(width: 2,color: Static.botton),
                ),
                child: ListTile(
                  leading: IconButton(onPressed: () {
                    profolio.selectImage(source:ImageSource.gallery);
                  }, icon: Icon(Icons.picture_as_pdf,color: Colors.red,),),
                  title: Text("Machine Learning Engineer",style: TextStyle(fontSize: 23.0,
                  ),),
                  subtitle: Text("CV.pdf300KB"),
                  trailing:
                  Icon(Icons.dangerous_outlined,color: Colors.red,),

                )):
            Image.file(File(profolio.image.value.toString()),),
            ),
          ),
          SizedBox(height: 2.h,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(() => profolio.image.value.isEmpty?
            Container(height: 74,width: 372,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(width: 2,color: Static.botton),
                ),
                child: ListTile(
                  leading: IconButton(onPressed: () {
                    profolio.selectImage(source:ImageSource.gallery);
                  }, icon: Icon(Icons.picture_as_pdf,color: Colors.red,),),
                  title: Text("flutter developer",style: TextStyle(fontSize: 23.0,
                  ),),
                  subtitle: Text("CV.pdf300KB"),
                  trailing:
                  Icon(Icons.dangerous_outlined,color: Colors.red,),

                )):
            Image.file(File(profolio.image.value.toString()),),
            ),
          ),
          SizedBox(height: 2.h,),

          MaterialButton(onPressed: (){
            Get.to(Complete_50());
          },color: Static.botton,child: Text("Next",style: Static.next,),),

        ],),
      ),
    );
  }
}
