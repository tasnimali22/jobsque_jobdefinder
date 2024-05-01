import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../Models/CompanyModel.dart';
import '../Services/companyServices.dart';

class ControllerCompany extends GetxController{

  final Show =CompanyServices();

  final show =<Data>[].obs;

  Future<List<Data>?>company ()async{
    show.value= (await Show.showCompany(dynamic))!;
  }
  @override
  void onInit() {
    super.onInit();
    company();
  }

}