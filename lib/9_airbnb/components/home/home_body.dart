import 'package:flutter/material.dart';
import 'package:study_book_modu_ui_1/9_airbnb/components/home/home_body_banner.dart';
import 'package:study_book_modu_ui_1/9_airbnb/components/home/home_body_popular.dart';
import 'package:study_book_modu_ui_1/9_airbnb/size.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    return Align(
      child: SizedBox(
        width: bodyWidth,
        child: Column(
          children: [
            HomeBodyBanner(),
            HomeBodyPopular(),
          ],
        ),
      ),
    );
  }
}
