import 'package:flutter/material.dart';

class CalculationTotalDisplay extends StatelessWidget {
  CalculationTotalDisplay({this.value: ''});

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
              fontSize: 60,
              fontFamily: 'RobotoBlack'
            ),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.end,
      ),
    );
  }
}