import 'package:flutter/material.dart';

import '../presentaiton/todoview/todo_view.dart';

class My_App extends StatefulWidget {
  const My_App({Key? key}) : super(key: key);
  @override
  State<My_App> createState() => _MyAppState();
}

class _MyAppState extends State<My_App> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen(),
    );
  }
}
