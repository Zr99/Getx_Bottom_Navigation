import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationController extends GetxController {
  RxBool isLowBattery = false.obs;
  RxBool isStuck = false.obs;
  RxBool isStartJob = false.obs;
  RxBool isEndJob = false.obs;
  RxBool isFull = false.obs;

  final noticationSettings = GetStorage('notification');
  SharedPreferences? prefs;

  void isLowBattery_Moco() {
    isLowBattery.value = isLowBattery.value ? false : true;
    
    if (isLowBattery.value) {
      saveOptions();
      //print(_saveOptions().toString());
    } else if (!isLowBattery.value) {
      saveOptions();
    //  print(_saveOptions());
    }
  }
  @override
  saveOptions() async{
    prefs = await SharedPreferences.getInstance();
    prefs!.setBool('isLow', isLowBattery.value);
  }
  @override
  readOptions() async{
    prefs = await SharedPreferences.getInstance();
    bool? contain = prefs!.getBool('isLow');
    isLowBattery.value = contain!;

  }

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

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
