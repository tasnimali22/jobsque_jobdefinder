import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../const/Text.dart';
import '../../const/const.dart';
import '../../const/images.dart';
import '../../login/login.dart';
import '../../controller/Controlleraccount.dart';

class CreatAccount extends StatefulWidget {
   CreatAccount({super.key});

  @override
  State<CreatAccount> createState() => _CreatAccountState();
}

class _CreatAccountState extends State<CreatAccount> {
  var name = TextEditingController();
  var email = TextEditingController();
  var pass = TextEditingController();
   bool showpass =false;
   // final serv =ServicesAccount();
   final contr =Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back), onPressed: () {  },),
                    Image.asset(Images.logo),
                  ],),
                SizedBox(height: 2.h,),
                Text(Texts.account,style: Static.accout),SizedBox(height: 2.h,),
                    
                Text(Texts.create,style: Static.creeat),
                SizedBox(height: 2.h,),
                TextField(
                  keyboardType:TextInputType.text,
                  controller: contr.namecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.person),
                    labelText: "Username",
                    hintText:  "Username"
                    
                  ),
                ),
                SizedBox(height: 2.h,),
                TextField(
                  keyboardType:TextInputType.text,
                  controller: contr.emailcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.email_outlined),
                    labelText: "Email",
                    hintText:  "Email"
                    
                  ),
                ),
                SizedBox(height: 1.h,),
                TextField(
                  keyboardType:TextInputType.text,
                  obscureText: true,
                  controller: contr.passcontroller,
                  decoration: InputDecoration(
                    helperText: "password must be at least 8 characters",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.security),
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        showpass=showpass;
                      });
                    },
                      icon: Icon(Icons.remove_red_eye,
                      color: showpass ? Static.botton :Static.grayColor),),
                    labelText: "password",
                    hintText:  "password"
                    
                  ),
                ),
                SizedBox(height: 7.h,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(Texts.login),
                    GestureDetector(
                      child: Text("Login",style:Static.textblue,),
                      onTap: (){
                        Get.to(Login());
                      },
                    ),
                    
                ],),
                SizedBox(height: 1.h,),
    GetBuilder<RegisterController>(
    builder: (controller) {
     return MaterialButton(
          onPressed: () {
            contr.registe();
            // Cubits.get(context).regster(name.text, email.text, pass.text);
          },
          color: Static.botton,
          child: Text("create Account", style: Static.next,));

    }),

                Text(Texts.orsign),
                SizedBox(height: 1.h,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: (){},
                        child: Row(children: [
                          Icon(Icons.facebook,color: Static.botton,),
                          Text("Facebook"),
                        ],)),
                    ElevatedButton(onPressed: (){},
                        child:
                          Text("Google"),
                        ),
                  ],)
              ],),
          ),
        ),

    );
  }
}
