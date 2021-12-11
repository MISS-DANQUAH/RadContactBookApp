import 'package:flutter/material.dart';
import 'package:my_contact_book/homeview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact App',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: HomeView()
    );
  }
}

