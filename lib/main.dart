import 'package:flutter/material.dart';
import 'urlImage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final materialApp = new MaterialApp(
      title: "",
      home: new URLImage()
    );
    return materialApp;

  }
}
