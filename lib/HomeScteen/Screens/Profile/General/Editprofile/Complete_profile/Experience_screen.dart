import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../const/const.dart';
import '../../../../../../const/images.dart';
import 'Complete_100.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Experience'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.all(15),
            child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          height: 640,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Static.blackColor.withOpacity(0.3)),
                              borderRadius: BorderRadius.circular(12)),
                          child: SingleChildScrollView(
                            child: Form(
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(height: 2.h,),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                         Text( 'Position*',style: Static.textgray,),
                                          TextFormField(
                                            controller:TextEditingController(),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10))),
                                                hintText: 'Position'),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Not Valid ';
                                              }
                                              return null;
                                            },
                                          )
                                        ]),
                                      SizedBox(height: 2.h,),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Type of work',style: Static.textgray,),
                                          TextFormField(
                                            controller: TextEditingController(),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10))),
                                                hintText: 'Type of work'),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Not Valid ';
                                              }
                                              return null;
                                            },
                                          )
                                        ]),
                                       SizedBox(height: 2.h,),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                         Text('Company name*',style: Static.textgray,),
                                          TextFormField(
                                            controller: TextEditingController(),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10))),
                                                hintText: 'Company name'),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Not Valid ';
                                              }
                                              return null;
                                            },
                                          )
                                        ]),
                                    SizedBox(height: 2.h,),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Location',style: Static.textgray,),
                                          // SizedBox(height: 8.h),
                                          TextFormField(
                                            controller: TextEditingController(),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10))),
                                                prefixIcon: GestureDetector(
                                                    onTap: () {},
                                                    child: const Icon(Icons
                                                        .location_on_outlined)),
                                                hintText: 'Location'),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Not Valid ';
                                              }
                                              return null;
                                            },
                                          )
                                        ]),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Start year*',style: Static.textgray,),
                                          // SizedBox(height: 8.h),
                                          TextFormField(
                                              controller:TextEditingController(),
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))),
                                                  hintText: 'Start year'),
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Not Valid ';
                                                }
                                                return null;
                                              })
                                        ]),
                                    SizedBox(height: 2.h,),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text( 'End year*',style: Static.textgray,),
                                          // SizedBox(height: 8.h),
                                          TextFormField(
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Not Valid ';
                                                }
                                                return null;
                                              },
                                              controller: TextEditingController(),
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10))),
                                                  hintText: 'End year'))
                                        ]),
                                         SizedBox(height: 2.h,),
                                  ]),
                            ),
                          )),
                     SizedBox(height: 2.h,),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Static.blackColor.withOpacity(0.3)),
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: ListTile(
                                trailing:
                                    Icon(Icons.edit, color: Static.botton),
                                title: Text('Senior UI/UX Designer',style: TextStyle(
                                    fontWeight: FontWeight.bold),),
                                subtitle: Text(
                                        'Remote • GrowUp Studio \n 2012 - 2015',
                                    style: Static.textgray),
                                leading: CircleAvatar(
                                  backgroundColor: Static.kohly,
                                  child: Image.asset(
                                      Images.Vector,
                                      fit: BoxFit.fill),
                                )),
                          )),
                      MaterialButton(onPressed: (){
                        Get.to(Complete_100());
                      },color: Static.botton,child: Text("Next",style: Static.next,),),
                    ]),
            ),
          ),
    );
  }
}
