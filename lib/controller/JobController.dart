import 'package:get/get.dart';
import '../Models/Job_MOdel.dart';
import '../Services/AllJob.dart';

class JobController extends GetxController{

  final jobs =AllJobsServices();

  final list =<Data>[].obs;

  Future<List<Data>?>fetchjob ()async{
    list.value= (await jobs.allJobs())!;
  }
  @override
  void onInit() {
    super.onInit();
    fetchjob();
  }
}