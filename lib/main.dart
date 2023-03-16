import 'package:flutter/material.dart';
import 'package:flutter_design_practices_basic/src/screens/basic_design_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'basic_design',
      routes: {'basic_design': (_) => const BasicDesignScreen()},
    );
  }
}
