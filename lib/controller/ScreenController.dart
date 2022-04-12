import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/Homepage.dart';
import '../views/Secondpage.dart';

class ScreenController extends GetxController{
  
  var _selectedIndex = 0.obs;

  List<Widget> _screenList = [
    Homepage(),
    Secondpage(),
  ];

  selectIndex(int index) => selectIndex(index);
  getScreen() => _screenList[_selectedIndex.value];
} 