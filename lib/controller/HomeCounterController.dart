import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCounterController extends GetxController {
  final count = 10.obs;

  void Counting() {
    count.value++;
  }

  void reset() {
    count.value = 0;
  }
}
