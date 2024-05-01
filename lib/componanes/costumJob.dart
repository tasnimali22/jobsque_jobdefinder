import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobCostum extends StatelessWidget{

  final String name;
  final String image;
  final String jobTimeType;
  final String jobType;
  final String compName;
  final String salary;
  // final String content;

  const JobCostum({super.key,
    required this.name,
    required this.image,
    required this.jobTimeType,
    required this.jobType,
    required this.salary,
    required this.compName,
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Column(children: [
            Row(children:[
              Text(image??""),
              Column(children: [
                Text(name??""),
                Text(compName??""),
              ],),
            ]),
            Row(children: [
              Text(jobTimeType??""),
              Text(jobType??""),

            ],)
            // Text(url??""),
          ],),
          Column(children: [
            IconButton(onPressed: (){},
                icon: Icon(Icons.bookmark_border)),
            Text(salary??""),
          ],)

        ],),
    );
  }

}