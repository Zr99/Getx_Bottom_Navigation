import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import './views/Home_Bottom_Nav.dart';
import './controller/HomeCounterController.dart';
//import './controller/LifeCycleController.dart';

final HomeCounterController homeCounterController =
    Get.put(HomeCounterController());

Future<void> main() async {
  // Get.put(LifeCycleController());
  //await GetStorage.init('notification');
  await GetStorage.init('countStorage');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeBottomNav(),
    );
  }
}

void initServices() async {
  print('Start services...');
  await Get.putAsync(() => DbService().init());
}

class DbService extends GetxService {
  Future<DbService> init() async {
    print('$runtimeType delays 2 sec');
    await 2.delay();
    print('$runtimeType ready!');
    return this;
  }
}
