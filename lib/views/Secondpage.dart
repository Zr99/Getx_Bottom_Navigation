import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controller/HomeCounterController.dart';

import './Settings.dart';
import './Homepage.dart';
import './Home_Bottom_Nav.dart';
class Secondpage extends StatelessWidget {
  final homeCounterController = Get.put(HomeCounterController());
  final countStorage = GetStorage('countStorage');

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(36, 54, 101, 1.0),
            ),
            child: Text('Reset'),
            onPressed: () {
              homeCounterController.resetCounterToZero();
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(36, 54, 101, 1.0),
            ),
            child: Text('Save text'),
            onPressed: () {
              homeCounterController.saveCounter();
              Get.snackbar('Hey hey','You just saved the counter');
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(36, 54, 101, 1.0),
            ),
            child: Text('delete text'),
            onPressed: () {
              homeCounterController.deleteCounter();
              Get.defaultDialog(title:'Are you sure?', textConfirm: 'Confirm', middleText: 'Are you sure you want to delete?', textCancel: 'Cancel',onConfirm:()=> Get.to(HomeBottomNav()));
            },
          ),
        ),
      ],
    ));
  }
}
