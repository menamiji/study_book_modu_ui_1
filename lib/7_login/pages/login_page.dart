import 'package:flutter/material.dart';
import 'package:study_book_modu_ui_1/7_login/components/custom_form.dart';
import 'package:study_book_modu_ui_1/7_login/size.dart';
import '../components/logo.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(
              height: xlarge_gap,
            ),
            Logo("Login"),
            SizedBox(
              height: large_gap,
            ),
            CustomForm(),
            SizedBox(
              height: large_gap,
            ),
            TextButton(
              onPressed: () => Get.back(),
              child: Text('뒤로가기'),
            ),
          ],
        ),
      ),
    );
  }
}
