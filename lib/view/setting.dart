import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _value = Provider.of<int>(context);
    return Scaffold(
      body: Center(
          child:  Text(
          "Settings ${_value.toString()}",
          style: TextStyle( fontSize: 30),

      )),
    );
  }
}