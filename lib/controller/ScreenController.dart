import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/Homepage.dart';
import '../views/Secondpage.dart';

class ScreenController extends GetxController {
  final selectedIndex = 0.obs;

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }

  // selectIndex(int index) => selectIndex(index);
  // getScreen() => _screenList[_selectedIndex.value];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
