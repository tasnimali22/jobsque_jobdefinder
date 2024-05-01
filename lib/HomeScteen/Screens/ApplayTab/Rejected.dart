
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/Text.dart';
import '../../../const/const.dart';
import '../../../const/images.dart';

class Rejected extends StatelessWidget {
  const Rejected({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Image.asset(Images.rejected),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(Texts.reject,style: Static.accout,),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(Texts.apps,style: Static.creeat,),
            ),
          ],),
        ),
    );
  }}