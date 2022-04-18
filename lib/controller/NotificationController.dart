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
    saveAllOptions();
  }

  saveAllOptions() async{
    prefs = await SharedPreferences.getInstance();
    
    prefs!.setBool('isLowBattery', isLowBattery.value);
    prefs!.setBool('isStuck', isStuck.value);
    prefs!.setBool('isStartJob', isStartJob.value);
    prefs!.setBool('isEndJob', isEndJob.value);
    prefs!.setBool('isFull', isFull.value);

  }
  retrieveAllSavedOptions() async{
    prefs = await SharedPreferences.getInstance();

    bool? isLowBatteryBoolean = prefs!.getBool('isLowBattery') ?? false;
    bool? isStuckBoolean = prefs!.getBool('isStuck') ?? false;
    bool? isStartJobBoolean = prefs!.getBool('isStartJob')?? false;
    bool? isEndJobBoolean = prefs!.getBool('isEndJob')?? false;
    bool? isFull_DumpStationBoolean = prefs!.getBool('isFull') ?? false;

    isLowBattery.value = isLowBatteryBoolean;
    isStuck.value = isStuckBoolean;
    isStartJob.value = isStartJobBoolean;
    isEndJob.value = isEndJobBoolean;
    isFull.value = isFull_DumpStationBoolean;

  }

  void isStuck_Moco() {
    isStuck.value = isStuck.value ? false : true;
    saveAllOptions();
  }

  void isStartJob_Moco() {
    isStartJob.value = isStartJob.value ? false : true;
    saveAllOptions();
  }

  void isEndJob_Moco() {
    isEndJob.value = isEndJob.value ? false : true;
    saveAllOptions();
  }

  void isFull_DumpStation() {
    isFull.value = isFull.value ? false : true;
    saveAllOptions();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
