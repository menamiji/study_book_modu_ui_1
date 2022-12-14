import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:study_book_modu_ui_1/10_chatapp/components/bottom_icon_button.dart';
import 'package:study_book_modu_ui_1/10_chatapp/components/round_icon_button.dart';
import '../models/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({required this.user, Key? key}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(user.backgroundImage),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.close,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            RoundIconButton(
              icon: FontAwesomeIcons.gift,
            ),
            SizedBox(
              width: 15,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.cog,
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        body: Column(
          children: [
            Spacer(),
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(user.backgroundImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              user.name,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              user.intro,
              style: TextStyle(color: Colors.white, fontSize: 20),
              maxLines: 1,
            ),
            SizedBox(
              height: 8,
            ),
            Divider(
              color: Colors.white,
            ),
            if (user.name == me.name) _buildMyIcons() else _buildFriendIcons(),
          ],
        ),
      ),
    );
  }

  Widget _buildMyIcons() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomIconButton(icon: FontAwesomeIcons.comment, text: "????????? ??????"),
          SizedBox(
            width: 50,
          ),
          BottomIconButton(icon: FontAwesomeIcons.pen, text: "????????? ??????"),
        ],
      ),
    );
  }

  Widget _buildFriendIcons() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BottomIconButton(icon: FontAwesomeIcons.comment, text: "1:1??????"),
          SizedBox(
            width: 50,
          ),
          BottomIconButton(icon: FontAwesomeIcons.phone, text: "????????????"),
        ],
      ),
    );
  }
}
