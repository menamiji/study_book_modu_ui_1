import 'package:flutter/material.dart';
import 'package:study_book_modu_ui_1/9_airbnb/components/home/home_body.dart';
import 'package:study_book_modu_ui_1/9_airbnb/components/home/home_header.dart';

class AirbnbHomePage extends StatelessWidget {
  const AirbnbHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeHeader(),
          HomeBody(),
        ],
      ),
    );
  }
}
