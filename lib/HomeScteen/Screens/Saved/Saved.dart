import 'package:flutter/material.dart';

import '../../../const/Text.dart';
import '../../../const/const.dart';
import '../../../const/images.dart';

class Saved extends StatelessWidget {
  const Saved({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved"),
        leading: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_back),),
      ),
      body:Center(child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(Images.Saved),
          Text(Texts.saved,style: Static.accout,),
          Text(Texts.press_save,style: Static.creeat,),
        ],),
      ),),
    );
  }
}
