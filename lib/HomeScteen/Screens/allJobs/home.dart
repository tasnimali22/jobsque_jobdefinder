
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import '../../../../controller/JobController.dart';
import '../../../../componanes/CustomCard.dart';
import '../../../const/const.dart';
import '../SearchAPI/Search.dart';
import '../detelies/Description.dart';

class Home extends StatefulWidget {
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex = 0;
bool isbookmark =false;
  // @override
  // void initState() {
  //   Cubits.get(context).getCategories();
  //   Cubits.get(context).pref();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(JobController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Hi Dain"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              controller: TextEditingController(),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                prefixIcon: IconButton(onPressed: () {
                  Get.to(Search());
                }, icon: Icon(Icons.search,),),
                labelText: "search",
              ),
            ),
            SizedBox(height: 3.h,),

            CarouselSlider.builder(
              itemCount: 2,
              options: CarouselOptions(
                  height: 183,
                  aspectRatio: 2,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, r) {
                    setState(() {
                      currentindex = index;
                    });
                    print(index);
                  }),
              itemBuilder: (BuildContext context, int index, int) {
                return CustomCard();
              },),
            // BlocBuilder <Cubits, CounterState>(
            // builder:(context,state){
            //   return state is GetallState
            //       ? const Center(
            //     child: CircularProgressIndicator(),
            //   ):
            Row(children: [
              Text("Recent Job",style: Static.accout,),
              GestureDetector(child: Text("view all",style: Static.next,),)
            ],),
               GetBuilder<JobController>(
                   init: JobController(),
                   builder: (controller) {
                   return ListView.builder(
                       physics: const BouncingScrollPhysics(),
                       shrinkWrap: true,
                       itemCount: controller.list.length,
                       itemBuilder: (BuildContext context, index) {
                         return  ListTile(
                           title: Column(
                             children: [
                               Padding(padding: EdgeInsets.all(11)),
                               GestureDetector(onTap: (){
                                 Get.to(Description(index: index,));
                               },
                                   child: Text(controller.list[index]!.name!,style:TextStyle(
                                     fontSize: 25,
                                   ),)
                               ),
                               Text(controller.list[index]!.location!),
                             ],),
                           leading: Image.network(controller.list[index]!.image!),
                           trailing:
                           IconButton(icon:isbookmark?
                           Icon(Icons.bookmark_outline):
                           Icon(Icons.bookmark),
                             onPressed: () {
                               setState(() {
                                 isbookmark=!isbookmark;
                               });
                             }, ),
                             // Text(controller.list[index]!.salary!),

                           subtitle: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Container(
                               decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(25),
                                 color: Static.babyblue,),
                                   child: Text(controller.list[index].jobTimeType??"")),
                               Container(
                                 decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(25),
                                 color: Static.babyblue,),
                                   child: Text(controller.list[index].jobType??"")),
                             ],
                           ),
                         );
                       });
                 }),
          ],
        ),
      ),
    );
  }
}
