import 'package:counter_app/controller/HomeCounterController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  final homeCounter = Get.put(HomeCounterController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('${homeCounter.count.value}'),
      ),
    );
  }
}
