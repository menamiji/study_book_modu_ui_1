import 'package:flutter/material.dart';

import '../components/logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Logo("Hong"),
            SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}
