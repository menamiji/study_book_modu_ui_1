import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_book_modu_ui_1/7_login/size.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: small_gap,),
        TextFormField(
          validator: (value) => value!.isEmpty ? "enter text" : null,
          obscureText: text == "Password" ? true : false,
          decoration: InputDecoration(
            hintText: "Enter $text",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            )
          ),
        ),
      ],
    );
  }
}
