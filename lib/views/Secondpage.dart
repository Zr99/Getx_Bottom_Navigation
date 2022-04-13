import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/HomeCounterController.dart';

class Secondpage extends StatelessWidget {
  final homeCounterController = Get.put(HomeCounterController());
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(36, 54, 101, 1.0),
        ),
        child: Text('Reset'),
        onPressed: () {
          homeCounterController.resetCounterToZero();
        },
      ),
    ));
  }
}
