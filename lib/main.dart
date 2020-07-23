import 'package:flutter/material.dart';
import 'package:flutterCodelabs/view/home_view.dart';
import 'package:flutterCodelabs/view/login_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeView(),
    );
  }
}
