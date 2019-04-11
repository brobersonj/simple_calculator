import 'package:flutter/material.dart';

typedef void OperationButtonTapCallback({String buttonText});

class OperationButton extends StatelessWidget {
  OperationButton({this.text, @required this.onTap});

  final String text;
  final OperationButtonTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: FlatButton(
          onPressed: () => onTap(buttonText: text),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
          ),
          color: Colors.yellow,
          padding: EdgeInsets.all(30),
          highlightColor: Colors.blueGrey[100],
          splashColor: Colors.blueAccent[100],
        ),
      ),
    );
  }

}