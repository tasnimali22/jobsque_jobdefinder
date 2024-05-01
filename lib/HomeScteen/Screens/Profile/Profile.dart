import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../../const/Text.dart';
import '../../../const/const.dart';
import '../../../const/images.dart';
import '../Apply job/portfoloi/controller port.dart';
import 'General/Editprofile/EditProfile.dart';
import 'General/language/language.dart';
import 'General/loginandsecurity/loginandsecurity.dart';
import 'General/notification/notification.dart';
import 'General/porfolioprofile/portfolioprofile.dart';
import 'Other/Accesibility/Accesibility.dart';
import 'Other/HelpCenter/HelpCenter.dart';
import 'Other/PrivacyPolicy/PrivacyPolicy.dart';
import 'Other/Terms&Conditions/Terms&Conditions.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final imagefile =Get.put(ImagePickerController());
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children:[
            Stack(children: [
              Image.asset(Images.Profile,width: 100.w,),
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_back,size: 25,),),
                 Text("Profile",style: TextStyle(fontSize: 17),),
                    IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_circle_right_outlined,size: 25,color: Colors.red,),),
                  ],),
              ),
              Positioned(
               top:150,
                left: 170,
                child:Obx(() => imagefile.image.value.isEmpty?
                Container(
                  height: 90,width: 90,
                  decoration: BoxDecoration(
                    border: Border.all(width:3,color: Static.whiteColor),
                    borderRadius: BorderRadius.circular(50),
                  ),
                    child:
                        Icon(Icons.person,color: Static.whiteColor,))
                        : Image.file(File(imagefile!.image.value.toString())),
            ),),
            ],),
        Center(child:
        Text("Rafif Dian Axelingga",style:Static.accout),),
            Center(child:
            Text("Senior UI/Ux Designer",style:Static.creeat),),
            Image.asset(Images.information),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("About",style: TextStyle(fontSize: 25,color: Static.grayColor),),
                Text("Edit",style:Static.textblue),
              ],),
            SizedBox(height: 3.h,),
            Text(Texts.about, style:Static.creeat),
            SizedBox(height: 3.h,),
            Container(height: 36,width: 100.w,
            color: Static.babygray,
            child: Text("General",style: TextStyle(fontSize: 25,color: Static.grayColor),),
            ),
            Container(width: 100.w,height:68 ,
            child: ListTile(
              leading: Image.asset(Images.profile),
              title: Text("Edit Profile"),
              trailing: IconButton(onPressed: () {
                Get.to(EditProfile());
              }, icon: Icon(Icons.arrow_forward),),
            ),),
            Divider(),
            Container(width: 100.w,height:68 ,
            child: ListTile(
              leading: Image.asset(Images.portfoliologo),
              title: Text("Portfolio"),
              trailing: IconButton(onPressed: () {
                Get.to(PortfolioProfile());
              }, icon: Icon(Icons.arrow_forward),),
            ),),
            Divider(),
            Container(width: 100.w,height:68 ,
            child: ListTile(
              leading: Image.asset(Images.location),
              title: Text("Langauge"),
              trailing: IconButton(onPressed: () {
                Get.to(Languages());
              }, icon: Icon(Icons.arrow_forward),),
            ),),
            Divider(), Container(width: 100.w,height:68 ,
            child: ListTile(
              leading: Image.asset(Images.natification),
              title: Text("Natification"),
              trailing: IconButton(onPressed: () {
                Get.to(Natification());
              }, icon: Icon(Icons.arrow_forward),),
            ),),
            Divider(),
            Container(width: 100.w,height:68 ,
            child: ListTile(
              leading: Image.asset(Images.security),
              title: Text("LOgin and security"),
              trailing: IconButton(onPressed: () {
                Get.to(LOginAndSecurity());
              }, icon: Icon(Icons.arrow_forward),),
            ),),
            Divider(),
            Container(height: 36,width: 100.w,
            color: Static.babygray,
            child: Text("Other",style: TextStyle(fontSize: 25,color: Static.grayColor),),
            ),
            Container(width: 100.w,height:68 ,
              child: ListTile(
                title: Text("Accesibility"),
                trailing: IconButton(onPressed: () {
                  // Get.to(Accesibility());
                }, icon: Icon(Icons.arrow_forward),),
              ),),
            Divider(),
            Container(width: 100.w,height:68 ,
              child: ListTile(
                title: Text("Help Center"),
                trailing: IconButton(onPressed: () {
                  Get.to(HelpCenter());
                }, icon: Icon(Icons.arrow_forward),),
              ),),
            Divider(),
            Container(width: 100.w,height:68 ,
              child: ListTile(
                title: Text("Terms & Conditions"),
                trailing: IconButton(onPressed: () {
                  Get.to(TermsConditions());
                }, icon: Icon(Icons.arrow_forward),),
              ),),
            Divider(),
            Container(width: 100.w,height:68 ,
              child: ListTile(
                title: Text("Privacy Policy"),
                trailing: IconButton(onPressed: () {
                  Get.to(PrivacePolocy());
                }, icon: Icon(Icons.arrow_forward),),
              ),),
            Divider(),
          ],),
      ),
    );
  }
}
