import 'package:flutter/material.dart';
import 'package:hello_world/appController.dart';
import 'package:hello_world/homePage.dart';
import 'package:hello_world/loginPage.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(Object context) {
    return AnimatedBuilder(
      animation: Appcontroller.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: Appcontroller.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
