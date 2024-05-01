import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../Dio/cubit/Counter_cubit.dart';
import '../../../../../../Dio/cubit/counter_state.dart';
import '../../../../../../const/const.dart';
import '../../porfolioprofile/portfolioprofile.dart';
import '../EditProfile.dart';
import 'Education_screen.dart';
import 'Experience_screen.dart';

class Complete_50 extends StatelessWidget {
  const Complete_50({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complete Profile'),
        centerTitle: true,
      ),
      body: Center(child: BlocBuilder<Cubits, CounterState>(builder: (context, state) {
        final profilecontrol = context.read<Cubits>();
        return SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 15.h,
                    width: 20.w,
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: 12.h,
                              width: 12.w,
                              child: CircularProgressIndicator(
                                value: profilecontrol.progress,
                                backgroundColor: Static.grayColor.withOpacity(0.4),
                                color: Static.botton,
                                strokeWidth: 1.5.w,
                              ))),
                      Align(
                          alignment: Alignment.center,
                          child: Text(
                            '${profilecontrol.perce} %',
                            style:TextStyle(fontSize: 23,
                                color: Static.botton),)),
                    ])),
                Text(
                  '${profilecontrol.completed}/4 Completed',style:
                TextStyle( color: Static.botton,
                    fontSize: 20),),
                Text('Complete your profile before applying for a job',
                  style:  Static.textgray,),
                // SizedBox(height: 2.h,),
                Container(
                  padding: EdgeInsets.all(7),
                  height: 90,width: 95.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(width: 1,color: Static.botton),
                    color: Static.babyblue,
                  ),child: ListTile(
                  title: Text("Personal Details",style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),),
                  subtitle: Text("Full name, email, phone number, and your address",),
                  trailing: IconButton(onPressed: () {
                    Get.to(EditProfile());
                  }, icon: Icon(Icons.arrow_forward),),),
                ),
                SizedBox(height: 2.h,),
                Container(
                  padding: EdgeInsets.all(7),
                  height: 90,width: 95.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(width: 1,color: Static.botton),
                    color: Static.babyblue,
                  ),child: ListTile(
                    title:Text("Portfolio",style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold),),
                    subtitle:Text("Create your portfolio. Applying for various types of jobs is easier",
                    ),trailing: IconButton(onPressed: () {
                  Get.to(PortfolioProfile());
                }, icon: Icon(Icons.arrow_forward),)
                ),
                ),
                SizedBox(height: 2.h,),
                Container(
                  padding: EdgeInsets.all(7),
                  height: 90,width: 95.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(width: 1,color: Static.grayColor),
                    // color: Static.babyblue,
                  ),child: ListTile(
                    title:Text("Education",style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold),),
                    subtitle:Text("Enter your educational history to be considered by the recruiter",
                    ),
                    trailing: IconButton(onPressed: () {
                      Get.to(Education());
                    }, icon: Icon(Icons.arrow_forward),)
                ),
                ),
                SizedBox(height: 2.h,),
                Container(
                  padding: EdgeInsets.all(7),
                  height: 90,width: 95.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(width: 1,color: Static.grayColor),
                    // color: Static.babyblue,
                  ),child: ListTile(
                    title:Text("Experience",style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold),),
                    subtitle: Text("Enter your work experience to be considered by the recruiter",),
                    trailing: IconButton(onPressed: () {
                      Get.to(Experience());
                    }, icon: Icon(Icons.arrow_forward),)),
                ),
              ]),
        );

      })
      ), );
  }
}


