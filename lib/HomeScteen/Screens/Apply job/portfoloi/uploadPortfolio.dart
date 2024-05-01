import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

import '../../../../const/const.dart';
import '../../allJobs/home.dart';
import '../UploadSuccess.dart';
import 'controller port.dart';

class Upload_portfolio extends StatelessWidget {
  Upload_portfolio({super.key});

  @override
  Widget build(BuildContext context) {

    final imagefile =Get.put(ImagePickerController());
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
                    backgroundColor: Static.botton,
                    child:Icon(Icons.check_rounded,color: Static.whiteColor,),
                  ),
                  Text("Type of work"),
                ],),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Static.babyblue,
                    child: Text("3"),

                  ),
                  Text("Upload portfololio"),
                ],),
            ],),
          SizedBox(height: 3.h,),
          Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Upload Portfolio",style: TextStyle(
                fontSize: 23.0,
                fontWeight: FontWeight.bold,),),
              Text("Fill in your bio data correctly",style: TextStyle(
                color: Static.grayColor,
              ),),
              SizedBox(height: 3.h,),
              Text("Upload CV",style: TextStyle(
                fontSize: 23.0,
              ),),
              Obx(() => imagefile.image.value.isEmpty?
              Container(height: 74,width: 372,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(width: 2,color: Static.botton),
                  ),
                  child: ListTile(
                    leading: IconButton(onPressed: () {
                      imagefile.selectImage(source:ImageSource.gallery);
                    }, icon: Icon(Icons.picture_as_pdf,color: Colors.red,),),
                    title: Text("Rafif Dain.CV",style: TextStyle(fontSize: 23.0,
                    ),),
                    subtitle: Text("CV.pdf300KB"),
                    trailing:
                        Icon(Icons.dangerous_outlined,color: Colors.red,),

                  )):
              Image.file(File(imagefile.image.value.toString()),),
              ),
              SizedBox(height: 3.h,),
              Text("Other File",style: TextStyle(
                fontSize: 23.0,
              ),),
              SizedBox(height: 1.h,),
              Obx(() => imagefile.image.value.isEmpty?
              Container(height: 221,width: 372,
                  decoration: BoxDecoration(
                    color: Static.babyblue,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(width: 2,color: Static.botton),
                  ),
                  child:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    IconButton(onPressed: (){
                      imagefile.selectImage(source:ImageSource.gallery);
                    }, icon: Icon(Icons.save,color:Static.botton)),
                    Text("Upload your other file",style: TextStyle(fontSize: 23.0,
                    ),),
                    Text("Max.file size 10MB"),
                    ElevatedButton(onPressed: (){imagefile.selectImage(source:ImageSource.gallery);
                    }, child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.file_upload_outlined),
                        Text("Add file")
                      ],),
                      style: ElevatedButton.styleFrom(backgroundColor: Static.babyblue),
                    )
                  ],) ):
              Image.file(File(imagefile.image.value.toString()),),
              ),

                ],
          ),
          MaterialButton(onPressed: (){Get.to(Upload_Success());},
            color: Static.botton,child: Text("Next"),),

        ],),
      ) ,
    );
  }
}
