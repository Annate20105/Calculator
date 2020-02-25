
import 'dart:async';

import 'package:calculator_app/ui/calculator_key.dart';
import 'package:calculator_app/ui/widget/button_widget.dart';
import 'package:flutter/material.dart';

class KeypadRowWidget extends StatelessWidget {

  Function onTap;
  List<Keys> keys;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _createWidgets(),
      ),
    );
  }
  KeypadRowWidget(this.keys, this.onTap);

  List<Widget> _createWidgets() {
    return new List<Widget>.generate(this.keys.length, (int index) {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            onTap(this.keys[index]);
          },
          child: ButtonWidget(this.keys[index]),
        ),
      );
    });
  }

}