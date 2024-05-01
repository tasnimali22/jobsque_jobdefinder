import 'dart:io';

import 'package:country_list_picker/country_list_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

import '../../../../../const/const.dart';
import '../../../../../const/images.dart';
import '../../../Apply job/portfoloi/controller port.dart';
import 'Complete_profile/Complete_profile.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final imagefile =Get.put(ImagePickerController());
    return Scaffold(
      appBar: AppBar(

        title: const Text('Edit Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Obx(() => imagefile.image.value.isEmpty?
              Container(
                height: 90,width: 90,
                decoration: BoxDecoration(
                  border: Border.all(width:3,color: Static.whiteColor),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(onPressed: () {
                  imagefile.selectImage( source: ImageSource.gallery);
                }, icon: Icon(Icons.camera_alt_outlined),)
              ):
            Image.file(File(imagefile.image.value.toString()),),
            ),

            Center(child: GestureDetector(onTap: (){
              imagefile.selectImage( source: ImageSource.gallery);

            },
                child: Text("ChangePhoto",style: Static.textblue,))),
            SizedBox(height: 3.h,),
            SizedBox(height: 3.h,),
              Text("Name",style: Static.textgray,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType:TextInputType.text,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "name",
                      hintText:  "name"
                  ),
                ),
              ),
            SizedBox(height: 3.h,),
            Text("Bio",style: Static.textgray,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType:TextInputType.text,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "bio",
                      hintText:  "bio"
                  ),
                ),
              ),
            SizedBox(height: 3.h,),
            Text("Address",style: Static.textgray,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType:TextInputType.text,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "address",
                      hintText:  "address"
                  ),
                ),
              ),
            SizedBox(height: 3.h,),
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
        
            MaterialButton(onPressed: (){
              Get.to(CompleteProfile());
              },color: Static.botton,child: Text("Next",style: Static.next,),),
        
          ],),
      ),

    );
  }
}
