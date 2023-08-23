import 'package:bmi_claculator/results.dart';
import 'package:flutter/material.dart';

import 'inputPage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF0F1436),
          appBarTheme: AppBarTheme(color: Color(0xFF0F1436)),
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.grey)),
      home: InputPage(),
      initialRoute: '/',
    );
  }
}
