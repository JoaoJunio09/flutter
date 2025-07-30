import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 63,
                      child: DropdownButton(
                        value: 'Real',
                        iconEnabledColor: Colors.amber,
                        isExpanded: true,
                        underline: Container(
                          height: 1, 
                          color: Colors.amber
                        ),
                        items: [
                          DropdownMenuItem(
                            value: 'Real',
                            child: Text('Real', style: TextStyle(color: Colors.white),),
                          ),
                          DropdownMenuItem(
                            value: 'Dolar',
                            child: Text('Dolar', style: TextStyle(color: Colors.white),),
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
              );
  }
}