import 'package:flutter/material.dart';
import 'package:hello_world/homePage.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}
