import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_book_modu_ui_1/6_profile/6_profile.dart';
import 'package:study_book_modu_ui_1/9_airbnb/9_airbnb.dart';

import '4_storeapp/4_storeapp.dart';
import '5_recipe/5_recipe.dart';
import '7_login/7_login.dart';
import '8_shoppingcart/8_shoppingcart.dart';

/*
https://github.com/flutter-coder/flutter-ui-book1
 */

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
        GetPage(
          name: '/5_recipe',
          page: () => Recipe(),
        ),
        GetPage(
          name: '/6_profile',
          page: () => ProfilePage(),
        ),
        GetPage(
          name: '/7_login',
          page: () => Login(),
        ),
        GetPage(
          name: '/8_shoppingcart',
          page: () => ShoppingCartPage(),
        ),
        GetPage(
          name: '/9_airbnb',
          page: () => Airbnb(),
        ),
        GetPage(
          name: '/10_chatapp',
          page: () => ProfilePage(),
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
            ElevatedButton(
              onPressed: () => Get.toNamed('5_recipe'),
              child: const Text("5. 레시피 앱 만들기"),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('6_profile'),
              child: const Text("6. 프로필 앱 만들기"),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('7_login'),
              child: const Text("7. 로그인 앱 만들기"),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('8_shoppingcart'),
              child: const Text("8. 쇼핑카트 앱 만들기"),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('9_airbnb'),
              child: const Text("9. 모두의 숙소 앱 만들기"),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('10_chatapp'),
              child: const Text("10. 모두의 채팅 앱 만들기"),
            ),
          ],
        ),
      ),
    );
  }
}
