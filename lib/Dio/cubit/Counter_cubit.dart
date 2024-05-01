import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';

class Cubits extends Cubit<CounterState>{
  Cubits(): super(InitCounter());

  static Cubits get(context) => BlocProvider.of(context);

  int selectedlabel = 0;
  selectLabel(int value) {
    selectedlabel = value;
    emit(SelectedLabel());
  }

  int percent = 25;
  int num_completed = 1;
  double progressValue = 0.25;

  int comp_index = 5;
  int? zero;

   int perce = 50;
   int completed = 2;
  double progress = 0.50;

   int perceted = 75;
   int complet = 3;
  double progressV = 0.75;

   int percen = 100;
   int completed_int = 4;
  double progressVal = 0.100;





  int? one;
  protfolioModel() {
    percent = 50;
    num_completed = 2;
    progressValue = 0.5;
    comp_index = 1;
    one = 1;
    emit(ProtfolioModelState());
  }

    int? two;
    educationModel() {
      percent = 75;
      num_completed = 3;
      progressValue = 0.75;
      comp_index = 2;
      two = 2;
      emit(EducationModelState());

      int? three;
      experienceModel() {
        percent = 100;
        num_completed = 4;
        progressValue = 1;
        comp_index = 3;
        three = 3;
        emit(ExperienceModelState());
      }
//   static SharedPreferences? preferences;
//
//    Future<void>pref()async{
//     preferences =await SharedPreferences.getInstance();
//   }
//
//   LoginModel? user;
//   RegisterModel? register;
//
//   login(String email, String pass)async{
//     emit(LoadingLoginState());
//    await DioHelper.dio.post(loginEndPoint,
//       data: FormData.fromMap({
//         "email":email,
//         "password":pass,
//       }),
//     ).then((value) async {
//       if (value.statusCode == 200){
//         user= LoginModel.fromJson(value.data);
//         print(value.data);
//         print(user!.token);
//         emit(SuccessLoginState());
//         String? email = preferences?.getString("email");
//         String? password = preferences?.getString("password");
//
//       } else {
//         print(value.data);
//         emit(ErrorLoginState());
//       }
//
//     }).catchError((erorr){
//       print(erorr.toString());
//       emit(ErrorLoginState());
//
//     });
//   }
//
//   regster(String name, String email, String pass)async{
//     emit(LoadingLRegisterState());
//     await DioHelper.dio.post(registerEndPoint,
//       data: FormData.fromMap({
//         "name": name,
//         "email":email,
//         "password":pass,
//       }),
//     ).then((value) {
//       print(value.data);
//       if (value.statusCode == 200){
//         register= RegisterModel.fromJson(value.data);
//         print(register!.token);
//
//         emit(SuccessRegisterState());
//
//       } else {
//         print(value.data);
//         emit(ErrorRegisterState());
//       }
//
//     }).catchError((erorr){
//       print(erorr.toString());
//       emit(ErrorRegisterState());
//
//     });
//   }
//
//   List<JobMOdel> categories = [];
//
// getCategories()async{
//   categories = [];
//   emit(GetallState());
//   DioHelper.dio.get(jobEndPoint,
//     options: Options(
//       headers: {
//                   "Authorization":"Bearer ${user!.token!}"
//       })
//     ).then((value) {
//       if(value.statusCode == 200){
//         print(value.data['data']);
//         for(var element in value.data['data']){
//           categories.add(JobMOdel.fromJson(element));
//           print(categories.length);
//         }
//         emit(SuccessgetState());
//       }else{
//         print(value.data);
//         emit(ErrorgetState());
//       }
//     }
//     ).catchError((error){
//       emit(ErrorgetState());
//       print(error);
//     });
// }
//
//
//
//

    }}