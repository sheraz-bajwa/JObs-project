import 'package:flutter/material.dart';
import 'package:project/generesdata.dart';
import 'package:project/platfromData.dart';
import 'package:project/regionData.dart';
import 'package:project/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: platform(),
    );
  }
}
