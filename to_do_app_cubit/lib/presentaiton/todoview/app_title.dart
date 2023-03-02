import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Text(
      "All Tasks",
      style: TextStyle(
        fontSize: 25,
        color: Colors.white
      ),
    );
  }
}