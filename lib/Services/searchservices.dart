import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../Models/FilterModel.dart';
import '../const/url.dart';

class FilterServices {

  Future<List<Data>?>filterJobServices(context, {required String query, required String name}) async {
    //get token
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? gettoken;
    gettoken = pref.getString('token');
    // Prepare JSON data
    try {
      final headers = {
        'Content-Type': 'application/json',
        HttpHeaders.authorizationHeader: 'Bearer $gettoken',
      };
      final body = {
        'name': name,
      };
      if(query.isNotEmpty) {
        final request = await http.post(Uri.parse(searchEndPoint));
        if (request.statusCode == 200) {
          final filter = jsonDecode(request.body);
        } else {
          print('++++++++++++++ false');
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  width: 400,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Login Error',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context); // Dismiss the bottom sheet
                        },
                        child: Text('OK'),
                      ),
                    ],
                  ),
                );
              });
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
