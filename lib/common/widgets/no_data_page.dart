import 'package:flutter/material.dart';

class NoDataPage extends StatelessWidget {
  const NoDataPage({super.key, this.icon, this.text});

  final String? icon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon ?? "",
              height: 200,
              width: 200,
            ),
            Text(text ?? "Something went wrong!"),
          ],
        ),
      ),
    );
  }
}
