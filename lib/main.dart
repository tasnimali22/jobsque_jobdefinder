import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';

import 'Dio/cubit/Counter_cubit.dart';
import 'HomeScteen/Buttomnav/Botton_Nav_Bar.dart';
import 'HomeScteen/Screens/Profile/General/Editprofile/Complete_profile/Complete_profile.dart';
import 'HomeScteen/Screens/allJobs/home.dart';
import 'Onboarding/jobsque/onboarding.dart';
import 'login/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // DioHelper.init();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
          return Sizer(
            builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
             return BlocProvider(
               create: (context) => Cubits(),
                child: GetMaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: Jobsque(),
              ),
             );
            },

          );

  }
}


