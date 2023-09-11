import 'package:dynamic_avarage_not/constants/constantsClass.dart';
import 'package:dynamic_avarage_not/widgets/avarage_calculater_page.dart';
import 'package:flutter/material.dart';
void main ()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Average Calculation",
      theme: ThemeData(
        primaryColor: Constansts.mainColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AverageCalculater(),
    );
  }
}