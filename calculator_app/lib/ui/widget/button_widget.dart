import 'package:calculator_app/ui/calculator_key.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  Keys type;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: KeysHelper.bgColor(this.type),
      child: Center(
        child: Text(KeysHelper.title(this.type),
          style: TextStyle(fontSize: 22, color:KeysHelper.textColor(this.type), fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
      ),
    );
  }

  ButtonWidget(this.type);
}
