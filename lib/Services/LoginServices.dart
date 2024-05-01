import 'dart:convert';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../HomeScteen/Buttomnav/Botton_Nav_Bar.dart';
import '../Models/LoginModel.dart';
import '../const/url.dart';

LoginModel login = LoginModel();
String usertoken = '';

class LoginServices {
  static const url = loginEndPoint;

  loginService(context, String email, String pass) async {
    try {
      final headers = {'Content-Type': 'application/json'};
      final body = {
        'email': email,
        'password': pass,
      };
      final response = await http.post(Uri.parse(url),
          headers: headers, body: jsonEncode(body));

      if (response.statusCode == 200) {

        var data = jsonDecode(response.body);

        login = LoginModel.fromJson(data);

        SharedPreferences pref = await SharedPreferences.getInstance();

        await pref.setString('token', '${login.token}');
        usertoken = pref.getString('token')!;
        Get.off(Button_Nav_Bar());
        print('$usertoken');
        print(pref.getString('token'));

        print('$login');
        print('${login.token})');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to login')),
        );
      }
    } catch (e) {
      print(e);
    }
  }
}