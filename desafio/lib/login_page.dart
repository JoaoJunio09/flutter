import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Widget _body(context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 180,
            child: Image.asset(
              'assets/images/tinder_white_flame_black_outline.png'
            ),
          ),
          Container(height: 25),
          SizedBox(
            child: Text(
              'Location Changer',
              style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
          Container(height: 10),
          SizedBox(
            child: Text(
              'PLugin app for Tinder',
              style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          Container(height: 30),
          SizedBox(
            height: 55,
            width: 250,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Login with Facebook',
                style: TextStyle(color: const Color.fromARGB(255, 255, 67, 85), fontWeight: FontWeight.w450),
              )
            ),
          )
        ],
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
              'assets/images/tinder-gradient-750x422.png',
              fit: BoxFit.cover,
            ),
          ),
          _body(context),
        ],
      ),
    );
  }
}
