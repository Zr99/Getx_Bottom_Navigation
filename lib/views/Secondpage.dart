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
        child: Text('Reset'),
        onPressed: () {
          homeCounterController.reset();
        },
      ),
    ));
  }
}
