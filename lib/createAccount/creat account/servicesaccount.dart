// import 'dart:convert';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:http/http.dart' as http;
// import '../multi choces/Gridviow/GridView.dart';
//
// class ServicesAccount {
//   final url= "https://project2.amit-learning.com/api/auth/register";
//
//
//   Future register( context, String name,String email ,String pass ) async {
//     try {
//       final body = {
//         "name": "$name",
//         "email": "$email",
//         "password": "$pass",
//       };
//       final headers = {"Content-Type": "application/json"};
//       final response = await http.post(Uri.parse(url),
//         body: jsonEncode(body), headers: headers,
//       );
//
//       if (response.statusCode == 200) {
//         print("success");
//       }
//       else {
//         showModalBottomSheet(
//             context: context,
//             builder: (BuildContext context) {
//               return Container(
//                 width: 400,
//                 padding: EdgeInsets.all(16.0),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     const Text(
//                       'Login Error',
//                       style: TextStyle(
//                         fontSize: 18.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 8.0),
//                     Text('${response.body}'),
//                     SizedBox(height: 16.0),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.pop(context); // Dismiss the bottom sheet
//                       },
//                       child: Text('OK'),
//                     ),
//                   ],
//                 ),
//               );
//             });
//       }
//       print(response.body);
//     }catch(e){
//       print(e);
//     }
//   }
// }