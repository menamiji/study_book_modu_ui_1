import 'package:flutter/material.dart';
import 'package:study_book_modu_ui_1/8_shoppingcart/constants.dart';
import 'package:study_book_modu_ui_1/9_airbnb/size.dart';
import 'package:study_book_modu_ui_1/9_airbnb/styles.dart';

class HomeBodyPopularItem extends StatelessWidget {
  HomeBodyPopularItem({required this.id, Key? key}) : super(key: key);

  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyWidth(context) / 3 - 5;

    return Padding(
      padding: const EdgeInsets.only(bottom: gap_x1),
      child: Container(
        constraints: BoxConstraints(
          minWidth: 320,
        ),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _buildPopularItemImage(),
              _buildPopularItemStar(),
              _buildPopularItemComment(),
              _buildPopularItemInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("images/9/${popularList[id]}", fit: BoxFit.cover),
        ),
        SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            for (int i = 1; i <= 5; i++)
              Icon(
                Icons.star,
                color: kAccentColor,
              ),
            SizedBox(
              height: gap_s,
            ),
          ],
        )
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          "깔끔하고 다 있다.",
          style: body1(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  Widget _buildPopularItemInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("images/9/p1.jpeg"),
        ),
        SizedBox(
          width: gap_s,
        ),
        Column(
          children: [
            Text(
              "홍홍",
              style: subtitle1(),
            ),
            Text("한국"),
          ],
        )
      ],
    );
  }
}
