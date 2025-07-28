import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column( 
            children: [
              Container(
                color: const Color.fromARGB(255, 38, 0, 100),
                height: 130,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Aplicativo - Contactfy',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'João Junio - Dev',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Container(height: 50),

                        TextField(
                          onChanged: (value) {
                            if (value != "") {
                              email = value;
                            }
                          },
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            border: OutlineInputBorder(),
                          ),
                        ),

                        Container(height: 20),

                        TextField(
                          onChanged: (value) {
                            if (value != "") {
                              password = value;
                            }
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                          ),
                        ),

                        Container(height: 20),

                        ElevatedButton(
                          onPressed: () {
                            if (email == "joaojunio818@gmail.com" &&
                                password == "123") {
                              Navigator.of(
                                context,
                              ).pushReplacementNamed('/home');
                            } else {
                              print('login inválido');
                            }
                          },
                          child: Text('Login'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}