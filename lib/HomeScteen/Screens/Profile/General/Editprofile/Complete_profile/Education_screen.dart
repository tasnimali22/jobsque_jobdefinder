import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../const/const.dart';
import '../../../../../../const/images.dart';
import 'Comlete_75.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education'),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 3.h,),
                Container(
                    padding: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    height: 475,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Static.blackColor.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Text( 'University*',style:Static.textgray),
                              TextFormField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      hintText: 'University'))
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Title',style:Static.textgray),
                              TextFormField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      hintText: 'Title'))
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text( 'Start year',style:Static.textgray),
                              TextFormField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      suffixIcon: GestureDetector(
                                          onTap: () {
                                            showDatePicker(
                                                context: context,
                                                firstDate: DateTime(1500),
                                                lastDate: DateTime(2050));
                                          },
                                          child:
                                              Icon(Icons.date_range_outlined)),
                                      hintText: 'Start year'))
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('End year',style:Static.textgray),
                              // SizedBox(height: 8.h),
                              TextFormField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      suffixIcon: GestureDetector(
                                          onTap: () {
                                            showDatePicker(
                                                context: context,
                                                firstDate: DateTime(1500),
                                                lastDate: DateTime(2050));
                                          },
                                          child:
                                              Icon(Icons.date_range_outlined)),
                                      hintText: 'End year'))
                            ]),
                        SizedBox(height: 4.h,),
                        MaterialButton(onPressed: (){
                          Get.to(Complete75());
                        },color: Static.botton,child: Text("Next",style: Static.next,),),

                      ],
                    )),
                SizedBox(height:2.h),
                Container(
                    height: 75,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Static.blackColor.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: ListTile(
                        trailing: Icon(Icons.edit, color: Static.botton),
                        title: Text(
                          'The University of Arizona',style: TextStyle(
                            fontWeight: FontWeight.bold),),
                        subtitle: Text(
                            'Bachelor of Art and Design \n 2012 - 2015',
                          style: TextStyle( color: Static.grayColor),),
                        leading: SizedBox(
                          width: 35,
                          height: 35,
                          child: Image.asset(Images.university,
                              fit: BoxFit.fill),
                        ),
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
