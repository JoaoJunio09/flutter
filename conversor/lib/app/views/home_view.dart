import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 63,
                        child: DropdownButton(
                          isExpanded: true,
                          underline: Container(
                            height: 1, 
                            color: Colors.amber
                          ),
                          items: [
                            DropdownMenuItem(
                              value: 'Real',
                              child: Text('Real'),
                            ),
                            DropdownMenuItem(
                              value: 'Dolar',
                              child: Text('Dolar'),
                            ),
                          ], 
                          onChanged: (value) {}
                        )
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber)
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.amber)
                          ),
                        ),
                      )
                    ),
                  ],
                ),
              ),
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