import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCounterController extends GetxController {
  final count = 10.obs;

  void Counting() {
    while (count < 100) {
      count.value++;
    }
  }

  void resetCounterToZero() {
    count.value = 0;
  }


}
