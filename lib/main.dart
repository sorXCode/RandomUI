import 'package:calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
));
// SystemChrome.setEnabledSystemUIOverlays([]);
  
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Calculator',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
              body1: TextStyle(color: Colors.white),
              button: TextStyle(color: Colors.red), ),
        ),
        home: Material(
          child: CalculatorUI(),
        ));
  }
}
