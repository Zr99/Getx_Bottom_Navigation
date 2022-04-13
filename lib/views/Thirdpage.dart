import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/HomeCounterController.dart';

class ThirdPage extends StatelessWidget {
  final HomeCounterController homeCounterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(homeCounterController.count.toString(), style: TextStyle(fontSize: 60),),
      ),
    );
  }
}
