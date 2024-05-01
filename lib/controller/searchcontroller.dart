import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../Models/FilterModel.dart';
import '../Services/searchservices.dart';

class ControllerFilter extends GetxController{


  final filter =<Data>[].obs;
  FilterServices aui =FilterServices();


  fetchfilter ()async{
    filter.value= (await aui.filterJobServices(Get.context! ,query: "query", name:'name'))!;
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchfilter();
  }
}