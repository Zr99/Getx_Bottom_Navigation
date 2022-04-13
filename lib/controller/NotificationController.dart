import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  RxBool isLowBattery = false.obs;
  RxBool isStuck = false.obs;
  RxBool isStartJob = false.obs;
  RxBool isEndJob = false.obs;
  RxBool isFull = false.obs;

  void isLowBattery_Moco() =>
      isLowBattery.value = isLowBattery.value ? false : true;

  void isStuck_Moco() {
    isStuck.value = isStuck.value ? false : true;
  }

  void isStartJob_Moco() {
    isStartJob.value = isStartJob.value ? false : true;
  }

  void isEndJob_Moco() {
    isEndJob.value = isEndJob.value ? false : true;
  }

  void isFull_DumpStation() {
    
    isFull.value = isFull.value ? false : true;
  }
}
