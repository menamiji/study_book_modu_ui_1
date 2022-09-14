import 'package:flutter/material.dart';
import 'package:study_book_modu_ui_1/8_shoppingcart/constants.dart';
import 'package:study_book_modu_ui_1/9_airbnb/size.dart';
import 'package:study_book_modu_ui_1/9_airbnb/styles.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  Widget _buildAppBarLogo() {
    return Row(
      children: [
        Image.asset("images/9/logo.png", width: 30, height: 30, color: kAccentColor,),
        SizedBox(width: gap_s,),
        Text("Hongbo", style: h5(mColor: Colors.white),),
      ],
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        Text("회원가입", style: subtitle1(mColor: Colors.white),),
        SizedBox(width: gap_m,),
        Text("로그인", style: subtitle2(mColor: Colors.white),),
      ],
    );
  }
}
