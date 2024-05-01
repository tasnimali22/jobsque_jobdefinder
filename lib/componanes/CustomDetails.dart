import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CostumDetails extends StatelessWidget{

  final String name;
  final String image;
  final String jobTimeType;
  final String jobType;
  final String jobDescription;
  final String jobSkill;
  final String location;

  const CostumDetails({super.key,
    required this.name,
    required this.image,
    required this.jobTimeType,
    required this.jobType,
    required this.jobDescription,
    required this.jobSkill,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
              Text(image??""),
                Text(name??""),
                Text(jobTimeType??""),
                Text(jobType??""),
                Text(jobDescription??""),
                Text(jobSkill??""),

        ],),
    );
  }

}