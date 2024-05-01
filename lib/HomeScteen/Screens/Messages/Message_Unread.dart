import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:sizer/sizer.dart';

import '../../../const/images.dart';
import 'chats/Dana.dart';
import 'chats/GojekIndonesia.dart';
import 'chats/Shoope.dart';
import 'chats/Twitter.dart';
import 'chats/facebook.dart';
import 'chats/slack.dart';

class Messages_Unread extends StatefulWidget {
  const Messages_Unread({super.key});

  @override
  State<Messages_Unread> createState() => _Messages_UnreadState();
}

class _Messages_UnreadState extends State<Messages_Unread> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();
    String _searchText = '';

    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {
                  _searchText = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
              ),),
          SizedBox(height:3.h),
          GestureDetector(
            onTap:(){Get.to(ChatTwitter());
               } ,
            child: SizedBox(
              height: 55,width: 100.w,
             child: ListTile(
               leading: Image.asset(Images.twitter),
               title:Text("Twitter") ,
               subtitle:Text("Here is the link: http://zoom.com/abcdeefg") ,
               trailing:Text("12:39") ,
             ),
            ),
          ),
            SizedBox(height:3.h),
            Divider(),
            SizedBox(height:3.h),
            GestureDetector(
            onTap: (){Get.to(ChatGojek());},
            child: SizedBox(
              height: 55,width: 100.w,
             child: ListTile(
               leading: Image.asset(Images.gojek),
               title:Text("Gojek indonesia") ,
               subtitle:Text("Let`s keep in touch.") ,
               trailing:Text("12:39") ,
             ),
            ),
          ),
            Divider(),
            SizedBox(height:3.h),
            GestureDetector(
              onTap:(){Get.to(ChatShoope());
              } ,
            child: SizedBox(
              height: 55,width: 100.w,
             child: ListTile(
               leading: Image.asset(Images.shoope),
               title:Text("Shoope") ,
               subtitle:Text("Thank you David!") ,
               trailing:Text("9:45"),
             ),
            ),
          ),
            Divider(),
            SizedBox(height:3.h),
            GestureDetector(
            onTap:(){Get.to(ChatDana());
            } ,
            child: SizedBox(
              height: 55,width: 100.w,
             child: ListTile(
               leading: Image.asset(Images.dana),
               title:Text("Dana") ,
               subtitle:Text("Thank you for you attention!") ,
               trailing:Text("yesterday") ,
             ),
            ),
          ),
            Divider(),
            SizedBox(height:3.h),
            GestureDetector(
            onTap:(){Get.to(ChatSlack());
            } ,
            child: SizedBox(
              height: 55,width: 100.w,
             child: ListTile(
               leading: Image.asset(Images.slack),
               title:Text("Slack") ,
               subtitle:Text("You: I look forword to hearing from you") ,
               trailing:Text("12/8") ,
             ),
            ),
          ),
            Divider(),
            SizedBox(height:3.h),
            GestureDetector(
            onTap:(){Get.to(ChatFacebook());
            } ,
            child: SizedBox(
              height: 55,width: 100.w,
             child: ListTile(
               leading: Image.asset(Images.facebook),
               title:Text("Facebook") ,
               subtitle:Text("You: What about the interview stage?") ,
               trailing:Text("12/8") ,
             ),
            ),
          ),
          ],),
        ),
      ),
    );
  }
}
