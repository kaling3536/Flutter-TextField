import 'app_body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appTitle = const Text('Flutter App');

    var appBody = AppBody();
    var appBar = AppBar(
      title: appTitle,);
    var app = MaterialApp(
        home: Scaffold(
          appBar: appBar,
          body: appBody,));
    return app;
  }
}