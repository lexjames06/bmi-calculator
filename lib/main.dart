import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF000000),
        scaffoldBackgroundColor: Color(0xFF000000),
        accentColor: Color(0xFFFCB100),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Color(0xFFFCB100),
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
