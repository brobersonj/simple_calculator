import 'package:flutter/material.dart';

typedef void CalculatorButtonTapCallback({String buttonText});

class CalculatorButton extends StatelessWidget {
  CalculatorButton({this.text, @required this.onTap});

  final String text;
  final CalculatorButtonTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(11.0),
        child: FlatButton(
          onPressed: () => onTap(buttonText: text),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
          padding: EdgeInsets.all(20.0),
          color: const Color(0xffF0F0F0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          highlightColor: Colors.blueGrey[100],
          splashColor: Colors.blueAccent[100],
        ),
      ),
    );
  }

}