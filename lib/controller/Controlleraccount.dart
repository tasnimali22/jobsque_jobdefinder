import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../Services/registerservices.dart';

class RegisterController extends GetxController{
final namecontroller = TextEditingController();
final emailcontroller = TextEditingController();
final passcontroller = TextEditingController();
final serv =ServicesAccount();

registe()async{
await serv.register(Get.context!, namecontroller.text, emailcontroller.text, passcontroller.text);
}
@override
  void onInit() {
  registe();
    // TODO: implement onInit
    super.onInit();
  }

}