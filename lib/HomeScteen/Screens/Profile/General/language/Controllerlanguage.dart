import 'package:get/get.dart';

class ControlLanguage extends GetxController{
  bool selectjobtype = false;
  int? currentindex;
  selectJobType(bool value, int index) {
    selectjobtype = value;
    currentindex = index;
  }
@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    selectJobType;
  }
}