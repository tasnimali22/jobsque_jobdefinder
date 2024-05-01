import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../const/const.dart';

class Natification extends StatefulWidget {
  const Natification({super.key});

  @override
  State<Natification> createState() => _NatificationState();
}

class _NatificationState extends State<Natification> {
  bool switchval=true;
  bool switchval1=true;
  bool switchval2=true;
  bool switchval3=true;
  bool switchval4=true;
  bool switchval5=true;
  bool switchval6=true;
  bool switchval7=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Notification'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children:[
          Container(height: 36,width: 100.w,
            color: Static.babygray,
            child: Text("Job notification",style: TextStyle(fontSize: 25,color: Static.grayColor),),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Your Lob Search Alert",style:TextStyle(fontSize: 20),),
            Switch(
                activeColor: Static.botton,
                value: this.switchval1, onChanged: (bool value){
                  setState(() => this.switchval1= value);
                }),
          ],),
          Divider(), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(" Job Application Update",style:TextStyle(fontSize: 20),),
            Switch(
                activeColor: Static.botton,
                value: this.switchval2, onChanged: (bool value){
                  setState(() => this.switchval2= value);
                }),
          ],),
          Divider(), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(" Job Application Reminders",style:TextStyle(fontSize: 20),),
            Switch(
                activeColor: Static.botton,
                value: this.switchval3, onChanged: (bool value){
                  setState(() => this.switchval3= value);
                }),
          ],),
          Divider(), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Jobs You May Be Interested In",style:TextStyle(fontSize: 20),),
            Switch(
                activeColor: Static.botton,
                value: this.switchval4, onChanged: (bool value){
                  setState(() => this.switchval4= value);
                }),
          ],),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Jobs Seeker Updates",style:TextStyle(fontSize: 20),),
            Switch(
                activeColor: Static.botton,
                value: this.switchval5, onChanged: (bool value){
                  setState(() => this.switchval5= value);
                }),
          ],),
          Divider(),
          Container(height: 36,width: 100.w,
            color: Static.babygray,
            child: Text("Other notification",style: TextStyle(fontSize: 25,color: Static.grayColor),),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Show Profile",style:TextStyle(fontSize: 20),),
            Switch(
                activeColor: Static.botton,
                value: this.switchval6, onChanged: (bool value){
              setState(() => this.switchval6= value);
            }),
          ],),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("All Message",style:TextStyle(fontSize: 20),),
            Switch(
                activeColor: Static.botton,
                value: this.switchval7, onChanged: (bool value){
              setState(() => this.switchval7= value);
            }),
          ],),
          Divider(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Message Nudges",style:TextStyle(fontSize: 20),),
            Switch(
                activeColor: Static.botton,
                value: this.switchval, onChanged: (bool value){
              setState(() => this.switchval= value);
            }),
          ],),
          Divider(),

        ]),
      ),
    );
  }
}
