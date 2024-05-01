import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../const/Text.dart';
import '../../../../../const/const.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {


  TextEditingController _searchController = TextEditingController();
  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Help Center'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {
                  _searchText = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'What can we help?',
                prefixIcon: Icon(Icons.search),
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Static.blackColor.withOpacity(0.3))),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Text(
                         'Lorem ipsum dolor sit amet',
                       style: TextStyle( fontWeight: FontWeight.bold,
                        fontSize: 17),),
                    Icon(Icons.keyboard_arrow_up)
                  ]),
                      Text(Texts.helpCenter,style: Static.textgray,)
                        ]),),
              ),
            SizedBox(height:2.h),
          ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                  itemBuilder: (BuildContext context,index){
                  return
                    Container(
                      width:100.w,
                      height: 55,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border:
                          Border.all(color: Static.blackColor.withOpacity(0.3))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text( 'Lorem ipsum dolor sit amet',
                      style: TextStyle( fontWeight: FontWeight.bold,
                          fontSize: 17),),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                    );

                }
              ),
          ],),
        ),
      ),
    );
  }
}
