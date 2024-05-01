import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque_jobdefinder/HomeScteen/Screens/Profile/Profile.dart';
import '../../const/const.dart';
import '../Screens/ApplayTab/Tab.dart';
import '../Screens/Messages/Message_Unread.dart';
import '../Screens/Saved/Saved.dart';
import '../Screens/allJobs/home.dart';
import 'ContrrolIndex.dart';

class Button_Nav_Bar extends StatelessWidget {
  const Button_Nav_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> body = [
      Home(),
      Messages_Unread(),
      ApplyedTab(),
      Saved(),
      Profile(),
    ];
    final _controller = Get.put(HomeController());
    return Scaffold(
      //backgroundColor: Cs.whiteColor,
      body: Obx(() => Center(
        child: body.elementAt(_controller.selectIndex),
      )),
       bottomNavigationBar:
       Obx(() =>
        //Container(
      //     decoration: const BoxDecoration(
      //       boxShadow: <BoxShadow>[
      //         BoxShadow(
      //           //color: Cs.secmainColor,
      //           blurRadius: 6,
      //         ),
      //       ],
      //     ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            child: BottomNavigationBar(
              elevation: 3,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon:   Icon(Icons.home_filled,
                      color: _controller.selectIndex == 0
                          ? Static.botton
                          : Static.grayColor),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon:   Icon(Icons.message_outlined,
                      color: _controller.selectIndex == 1
                          ? Static.botton
                          : Static.grayColor),
                  label: 'message',
                ),
                BottomNavigationBarItem(
                    icon:   Icon(Icons.home_repair_service_outlined,
                        color: _controller.selectIndex == 2
                            ? Static.botton
                            : Static.grayColor.withOpacity(.5)),
                    label: 'Applied'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.bookmark_border,
                        color: _controller.selectIndex == 3
                            ?Static.botton
                            : Static.grayColor),
                    label: 'saved'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline,
                        color: _controller.selectIndex == 4
                            ?Static.botton
                            : Static.grayColor),
                    label: 'profile'),
              ],

              type: BottomNavigationBarType.fixed,
              currentIndex: _controller.selectIndex,
              onTap: (index) {
                _controller.select(index);
                // _controller.tappedIcon(index);
              },
            ),

      ),
       ),
    );
  }
}

