import 'package:flutter/material.dart';
import 'package:study_book_modu_ui_1/9_airbnb/components/home/home_body_popular_item.dart';
import 'package:study_book_modu_ui_1/9_airbnb/size.dart';
import 'package:study_book_modu_ui_1/9_airbnb/styles.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPopularTitle(),
          _buildPopularList(),
        ],
      ),
    );
  }

  Widget _buildPopularTitle() {
    return Column(
      children: [
        Text(
          "한국 숙소에 다녀온 후기",
          style: h5(),
        ),
        Text(
          "게스트 후기 이상, 평균 평점 이상",
          style: body1(),
        ),
        SizedBox(height: gap_m,),
      ],
    );
  }

  Widget _buildPopularList() {
    return Wrap(
      children: [
        HomeBodyPopularItem(id: 0),
        SizedBox(
          width: 7.5,
        ),
        HomeBodyPopularItem(
          id: 1,
        ),
        SizedBox(
          width: 7.5,
        ),
        HomeBodyPopularItem(
          id: 2,
        ),
      ],
    );
  }
}
