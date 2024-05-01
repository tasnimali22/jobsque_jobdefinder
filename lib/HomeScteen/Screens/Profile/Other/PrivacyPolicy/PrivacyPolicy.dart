import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../const/Text.dart';
import '../../../../../const/const.dart';

class PrivacePolocy extends StatelessWidget {
  const PrivacePolocy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Privace Polocy'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Your privacy is important",
              style: TextStyle( fontWeight: FontWeight.bold,
                  fontSize: 17),),
            SizedBox(height: 1.5.h,),
            Text(Texts.terms,style: Static.textgray,),
            SizedBox(height:1.h,),
            Text(Texts.privacy,style: Static.textgray,),
            SizedBox(height:3.h,),
            Text("Data controllers and contract partners",
              style: TextStyle( fontWeight: FontWeight.bold,
                  fontSize: 17),),
            SizedBox(height:2.h,),
            Text(Texts.terms,style: Static.textgray,),
          ],),
        ),
      ),
    );
  }
}
