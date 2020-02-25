import 'package:flutter/material.dart';

class Display extends StatefulWidget {

  String value;
  Display(this.value);

  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF9F9594),
      child: Center(
        child: Text(
          widget.value,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 72.0,fontFamily: "Roboto", color: Color(0xFFFFF4F0)),
          maxLines: 2,
        ),
      )
    );
  }
}
