import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

typedef void OperationButtonTapCallback({String buttonText});

class OperationButton extends StatelessWidget {
  OperationButton({this.text, @required this.onTap});

  final String text;
  final OperationButtonTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(11.0),
        child: FlatButton(
          onPressed: () => onTap(buttonText: text),
          child: AutoSizeText(
            text,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: const Color(0xffCB9326),
            ),
            minFontSize: 18.0,
            maxLines: 1,
          ),
          color: const Color(0xffFFEFC3),
          padding: EdgeInsets.all(20.0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          highlightColor: Colors.blueGrey[100],
          splashColor: Colors.blueAccent[100],
        ),
      ),
    );
  }

}