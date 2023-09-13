// lib/main.dart
import 'package:flutter/material.dart';
import 'package:resume_app/pages/home_page.dart';
// import 'editing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      // routes: {
      //   '/edit': (context) => EditingPage(),
      // },
    );
  }
}
