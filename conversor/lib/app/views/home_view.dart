import 'package:conversor/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 20),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(500),
                child: Image.network(
                   'https://st2.depositphotos.com/1185628/11062/v/450/depositphotos_110627010-stock-illustration-currency-converter-exchange-icon.jpg',
                   width: 150, 
                   height: 150,
                )
              ),
              SizedBox(height: 50),
              CurrencyBox(),
              SizedBox(height: 10),
              CurrencyBox(),
              SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                onPressed: () {}, 
                child: Text('CONVERTER', style: TextStyle(color: Colors.white),)
              ),
            ],
          ),
        ),
      )
    );
  }
}