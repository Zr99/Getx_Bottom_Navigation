import 'package:counter_app/controller/HomeCounterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/NotificationController.dart';

class Homepage extends StatelessWidget {
  final homeCounter = Get.put(HomeCounterController());
  final notificationController = Get.put(NotificationController());


  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Obx(() =>Text('${homeCounter.count.value}', style: TextStyle(fontSize: 60),), ) ,
          ),
          SizedBox(height: 20,),
          //  Container(
          //   child: Obx(() =>Text('${notificationController.readOptions().toString()}', style: TextStyle(fontSize: 60),), ) ,
          // ),
         
        ],
      ),
    );
  }
}
