import 'package:flutter/material.dart';
import 'package:economise_app/ui/screens/home/EconomiseHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: EconomiseHome(title: 'Monthly expenses'),
    );
  }
}
