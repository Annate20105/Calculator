
import 'package:calculator_app/ui/calculator_key.dart';
import 'package:calculator_app/ui/widget/display_widget.dart';
import 'package:calculator_app/ui/widget/keypad_widget.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  String _output = '';

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Display(widget._output),
          ),
          Container(
            color: Color(0xFF978D8C),
            child:Image(
              image: AssetImage('assets/arrow_bottom.png'),
              height: 30,
            ),
          ),
          Expanded(
            flex: 3,
            child: KeypadWidget(this.onKeypadTouch),
          )
        ],
      ),
    );
  }

  void onKeypadTouch(Keys type) {
    if (type == Keys.backspace) {
      backspace();
    } else if (type == Keys.clear) {
      clear();
    } else {
      setState(() {
        widget._output += KeysHelper.title(type);
      });
    }
  }

  void clear() {
    setState(() {
      widget._output = '';
    });
  }

  void backspace() {
    setState(() {
      if (widget._output.length > 0) {
        widget._output = widget._output.substring(0, widget._output.length - 1);

      }
    });
  }

}
