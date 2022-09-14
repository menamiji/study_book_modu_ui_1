import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study_book_modu_ui_1/7_login/components/custom_text_form_field.dart';
import 'package:study_book_modu_ui_1/7_login/size.dart';

class CustomForm extends StatelessWidget {
  CustomForm({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField("Email"),
          SizedBox(
            height: medium_gap,
          ),
          CustomTextFormField("Password"),
          SizedBox(
            height: large_gap,
          ),
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text('login'),
          ),
        ],
      ),
    );
  }
}
