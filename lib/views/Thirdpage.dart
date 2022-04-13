import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../controller/HomeCounterController.dart';

class ThirdPage extends StatelessWidget {
  final HomeCounterController homeCounterController = Get.find();
  final countStorage = GetStorage('countStorage');

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(homeCounterController.count.toString(), style: TextStyle(fontSize: 60),),
          ),
          SizedBox(height: 20,),
          Container(child: Text(countStorage.read('count') ?? 'Empty', style: TextStyle(fontSize: 60),))
        ],
      ),
    );
  }
}
