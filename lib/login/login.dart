import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../const/Text.dart';
import '../const/const.dart';
import '../const/images.dart';
import '../controller/loginController.dart';
import '../createAccount/creat account/creataccount.dart';
import '../forget password/forgetpass.dart';

class Login extends StatefulWidget {

   Login({super.key});


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email = TextEditingController();
  var pass = TextEditingController();
  


  bool isChecked = false;
  // final servi =ServicesLogin();
  final contri =Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    Color getColors(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.red;
      }
      return Color(0xFF3366FF);
    }
    bool showpass =false;

    return Scaffold(
      body: SafeArea(
        child:  SingleChildScrollView(
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
          Text(Texts.loginn,style: Static.accout),SizedBox(height: 2.h,),
          Text(Texts.signin,style: Static.creeat),
          SizedBox(height: 2.h,),
            TextField(
              keyboardType:TextInputType.text,
              controller: contri.emailcontroll,
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
              obscureText: true,
              controller: contri.passcontroll,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.security),
                  suffixIcon: IconButton(onPressed: () {
                    setState(() {
                      showpass=!showpass;
                    });
                  },
                    icon: Icon(Icons.remove_red_eye,
                        color: showpass ? Static.botton :Static.grayColor),),
                  labelText: "password",
                  hintText:  "password"
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColors),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text("Remeber me")
                  ],
                ),
                GestureDetector(
                  child: Text("Forget password",style:Static.textblue,),
                  onTap: (){
                    Get.to(ForgetPass());
                  },
                ),

              ],
            ),
            SizedBox(height: 7.h,),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(Texts.haveaccount),
              GestureDetector(
                child: Text("Register",style: Static.textblue,),
                onTap:(){Get.to(CreatAccount());} ,
              )
            ],),
            SizedBox(height: 2.h,),
              // BlocConsumer<Cubits,CounterState>(
              // listener: ( context, state) {
              // if (state is LoadingLoginState){
               // Get.off(Button_Nav_Bar());
              //  Get.off(Home());
              // }
              // },
              // builder: ( context, state) {
              // return state is LoadingLRegisterState?
              // Center(child: CircularProgressIndicator(),)
            GetBuilder<LoginController>(
               builder: (controller) {
                 return MaterialButton(onPressed: () {
        // Cubits.get(context).login(email.text, pass.text);
                contri.logout();
                },
          color: Static.botton,
          child: Text("Login",
            style: Static.next,));

    }),
            SizedBox(height: 2.h,),
            Text(Texts.orsign),
            SizedBox(height: 4.h,),
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
          ]),
        ),
    ),

    );
  }
}
