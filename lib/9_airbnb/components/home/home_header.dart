import 'package:flutter/material.dart';
import 'package:study_book_modu_ui_1/9_airbnb/components/home/home_header_appbar.dart';
import 'package:study_book_modu_ui_1/9_airbnb/components/home/home_header_form.dart';
import 'package:study_book_modu_ui_1/9_airbnb/size.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: header_height,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/9/background.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              HomeHeaderAppBar(),
              HomeHeaderForm(),
            ],
          ),
        ),
    );
  }
}
