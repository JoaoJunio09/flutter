import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(500),
              child: Image.network(
                 'https://st2.depositphotos.com/1185628/11062/v/450/depositphotos_110627010-stock-illustration-currency-converter-exchange-icon.jpg',
              )
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButton(
                      items: [], 
                      onChanged: (value) {}
                    )
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(),
                    )
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {}, 
              child: Text('CONVERTER')
            ),
          ],
        ),
      )
    );
  }
}