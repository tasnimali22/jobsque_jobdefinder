// import 'dart:convert';
// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:http/http.dart' as http;
// import '../../forget password/succesfuly.dart';
//



// class ServicesLogin {
//   final url= "https://project2.amit-learning.com/api/auth/login";
//
//
//    login(BuildContext context, String ?email ,String pass ) async {
//     final body= {
//       "email":"$email",
//       "password":"$pass",
//     };
//     final headers= {"Content-Type":"multipart/form-data"};
//     final response = await http.post(Uri.parse(url), body: jsonEncode(body),headers: headers,
//     );
//
//     if (response.statusCode == 200) {
//       //final jsonregest = jsonDecode(response.body);
//       Get.off(Succesfuly());
//
//     }
//     else(error){
//       print(error.toString());
//     };
//   }
// }