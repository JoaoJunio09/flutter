import 'package:flutter/material.dart';
import 'package:hello_world/homePage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  Widget _body() {
    return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 350,
                  width: 350,
                  child: Image.asset('assets/images/ChatGPT Image 26 de mai. de 2025, 13_35_38.png')
                ),

                Container(height: 0),

                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 20, bottom: 12
                    ),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (text) {
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          onChanged: (text) {
                            password = text;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 55, 0, 166),
                          ),
                          onPressed: () {
                            if (email == "jacob@flutterando.com.br" && password == "123") {
                              Navigator.of(context).pushReplacementNamed('/home');
                            } else {
                              print('Login inválido');
                            }          
                          },
                          child: Container(
                            width: double.infinity,
                            child: Text('Entrar', 
                              textAlign: TextAlign.center, 
                              style: TextStyle(color: Colors.white)
                            )
                          ),
                        ),
                      ],
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/5559852.jpg', 
              fit: BoxFit.cover
            )
          ),
          Container(
             color: Colors.black.withOpacity(0.3)
          ),
          _body(),
        ],
      )
    );
  }
}