import 'package:flutter/material.dart';

class CalculationDisplay extends StatelessWidget {
  CalculationDisplay({this.value: ''});

  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),  
      child: Row(
        children: <Widget>[
          Text(
            value,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'RobotoRegular'
            ),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.end,
      ),
    );
  }
}