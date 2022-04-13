import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controller/NotificationController.dart';

class Fourthpage extends StatelessWidget {
  NotificationController notificationController =
      Get.put(NotificationController());
  // final notificationSettings = GetStorage('notification');
  Widget _buildSwitchListTile(
      String title, bool currentValue, Function updateValue) {
    return SwitchListTile.adaptive(
      title: Text(title),
      value: currentValue,
      activeColor: Color.fromRGBO(36, 54, 101, 1.0),
      inactiveThumbColor: Colors.black,
      onChanged: (value) => updateValue(value),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            padding: EdgeInsets.all(10),
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.navigate_before,
              size: 40,
            ),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Text(
                'Notifications',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                   Obx((() => _buildSwitchListTile('MOCO low battery', notificationController.isLowBattery.value, (val)=> notificationController.isLowBattery_Moco()))),                  
                  Divider(),
                  Obx((() => _buildSwitchListTile('MOCO stuck', notificationController.isStuck.value, (val)=> notificationController.isStuck_Moco()))),
                  Divider(),
                  Obx((() => _buildSwitchListTile('MOCO start job', notificationController.isStartJob.value, (val)=> notificationController.isStartJob_Moco()))),
                  Divider(),
                  Obx((() => _buildSwitchListTile('MOCO end job', notificationController.isEndJob.value, (val)=> notificationController.isEndJob_Moco()))),
                  
                  Divider(),
                   Obx((() => _buildSwitchListTile('Dump Station is Full', notificationController.isFull.value, (val)=> notificationController.isFull_DumpStation()))),
                 
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}

