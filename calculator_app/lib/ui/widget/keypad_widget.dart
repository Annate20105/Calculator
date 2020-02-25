
import 'package:calculator_app/ui/calculator_key.dart';
import 'package:calculator_app/ui/widget/keypad_row_widget.dart';
import 'package:flutter/material.dart';

class KeypadWidget extends StatelessWidget {
  Function onTap;

  KeypadWidget(this.onTap);

  @override

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _createWidgets(),
    );
  }

  List<Widget> _createWidgets() {
    List<List<Keys>> contents = KeysHelper.contents;
    return List<Widget>.generate(contents.length, (int index) {
      return  KeypadRowWidget(contents[index], this.onTap);
    });
  }


}

