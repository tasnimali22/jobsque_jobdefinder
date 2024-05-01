import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../const/const.dart';
import '../../../data.dart';
class ApplyedTab extends StatelessWidget{
  const ApplyedTab({super.key});


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: tabs.length,
      child : Scaffold(
        appBar: AppBar(
          title: Text("Applyed Job"),
          centerTitle: true,
          bottom: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Static.kohly,
            ),
            labelColor: Static.whiteColor,
            tabs: tabs,
          ),
        ),
        body:
        // TextButton(onPressed: () {ser.fetchNews();  }, child: const Text("data"),),
        TabBarView(children:tabview),

      ),
    );
  }

}