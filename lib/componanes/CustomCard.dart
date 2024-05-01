import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget{
  const CustomCard({super.key});


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      child: Container(
        width: 300,
        height: 183,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child:Image.asset("assets/images/Zoom Job.png")
      ),
    );
  }
}
