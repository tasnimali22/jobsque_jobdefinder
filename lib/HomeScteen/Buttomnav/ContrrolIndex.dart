import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController{
  final _selectIndex =0.obs;
  int get selectIndex=> _selectIndex.value;

  select(int index){
    _selectIndex.value=index;
    update();
  }

}