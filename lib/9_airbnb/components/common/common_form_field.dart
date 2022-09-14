//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:study_book_modu_ui_1/9_airbnb/styles.dart';

class CommonFormField extends StatelessWidget {
  const CommonFormField(
      {required this.prefixText, required this.hintText, Key? key})
      : super(key: key);

  final prefixText;
  final hintText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              top: 30,
              left: 20,
              bottom: 10,
            ),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              ),
            ),
          ),
        ),
        Positioned(
            top: 8,
            left: 20,
            child: Text(
              prefixText,
              style: overLine(),
            )),
      ],
    );
  }
}
