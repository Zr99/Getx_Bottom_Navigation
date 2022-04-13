import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCounterController extends GetxController {
  Timer? timer;
  final count = 10.obs;

  void startCounting() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addCount());
  }

  void addCount() {
    count.value++;
  }

  void resetCounterToZero() {
    count.value = 0;
  }

  @override
  void onInit() {
    startCounting();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
