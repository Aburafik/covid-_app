import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'detailpage.dart';
import 'symptompage.dart';
import 'Instructions.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            home:Homepage(),
    );
  }
}


