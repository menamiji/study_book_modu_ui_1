import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '4_storeapp/4_storeapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => MyHome(),
        ),
        GetPage(
          name: '/4_storeapp',
          page: () => StorePage(),
        ),
      ],
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('모두가 할 수 있는 플루터 UI 입문'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.toNamed('4_storeapp'),
              child: const Text("4. 스토어 앱 만들기"),
            ),
          ],
        ),
      ),
    );
  }
}
