import 'package:flutter/material.dart';
import 'pages/home_page.dart';


void main() {
  runApp(Todoey());
}
class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
          body: HomePage()
      ),
    );
  }
}
