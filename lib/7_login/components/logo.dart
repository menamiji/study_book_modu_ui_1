import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  const Logo(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset("images/7/logo.svg", height: 70, width: 70,),
        Text(title, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
      ],
    );
  }
}
