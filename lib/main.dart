import 'package:flutter/material.dart';
import 'views/viewTasksPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DSC To-do List',
      theme: ThemeData(
        primaryColor: const Color(0xFFC200FB),
      ),
      home: ViewTasksPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
