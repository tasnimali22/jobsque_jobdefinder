import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'const.dart';

class Home_Bottom extends StatelessWidget {
   Home_Bottom({
    required this.currentIndex,
    required this.onTap,
    required this.list,
    super.key,

  });

  final int currentIndex;
  void Function(int) onTap;
  final List list;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex:currentIndex ,
      onTap: onTap,
      items: [
        for(int i =0; i< list.length;i++)
          BottomNavigationBarItem(
            icon: Icon(list[i]["icon"],color:Static.grayColor,size:45),
            label: list[i]["label"],
            activeIcon:Icon(list[i]["active"],color: Static.botton,size: 45, ),
          ),
      ],);
  }
}