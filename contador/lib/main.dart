import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _counter = 0;
  double _fontSize = 14.0;
  String title = 'Clique aqui para somar a contagem:';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Primeiro App sozinho')),
      body: Center(
        child: GestureDetector(
          child: Text(
            '$title $_counter',
            style: TextStyle(fontSize: _fontSize, color: Colors.red),
          ),
          onTap: () {
            setState(() {
              _counter++;

              if (_counter == 10) {
                title =
                    'Você chegou no 10, esta avançando parabéns! Continue: ';
                _fontSize = 12;
              }
            });
          },
        ),
      ),
    );
  }
}
