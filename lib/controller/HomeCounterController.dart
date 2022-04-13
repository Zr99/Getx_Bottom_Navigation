import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeCounterController extends GetxController {
  Timer? timer;
  final count = 10.obs;
  final countStorage = GetStorage('countStorage');

  void startCounting() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addCount());
  }

  void addCount() {
    count.value++;
  }

  void resetCounterToZero() {
    count.value = 0;
  }

  void saveCounter() {
    countStorage.write('count', count.toString());
  }

  void deleteCounter() {
    countStorage.remove('count');
  }

  @override
  void onInit() {
    startCounting();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
