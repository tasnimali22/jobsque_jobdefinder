import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../const/Text.dart';
import '../../../../../const/const.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Terms & Conditions'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Lorem ipsum dolor",
              style: TextStyle( fontWeight: FontWeight.bold,
                fontSize: 17),),
              SizedBox(height: 1.5.h,),

              Text(Texts.terms,style: Static.textgray,),

              SizedBox(height:2.h,),
              Text("Lorem ipsum dolor",
              style: TextStyle( fontWeight: FontWeight.bold,
                fontSize: 17),),
              Text(Texts.condition,style: Static.textgray,),
              SizedBox(height:2.h,),
              Container(
                padding: EdgeInsets.all(12),
                child: Text(Texts.nunc,style: Static.textgray,),
              ),
              SizedBox(height:2.h,),
              Text(Texts.lorem,style: Static.textgray,),

            ],),
        ),
      ),
    );
  }
}
