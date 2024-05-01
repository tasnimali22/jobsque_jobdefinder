import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../Services/LoginServices.dart';

class LoginController extends GetxController{
  final emailcontroll = TextEditingController();
  final passcontroll = TextEditingController();
  final serlog =LoginServices();

  logout()async{
    await serlog.loginService(Get.context!, emailcontroll.text, passcontroll.text);
  }
  @override
  void onInit() {
    logout();
    super.onInit();
  }

}