
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.message)
          ],
          leading: Icon(Icons.menu),
          title: const Text('My Travel Journal' ),
        ),
        body: const Center(
          child: Text('Welcome to Flutter' , style: TextStyle(
            fontSize: 33.0,
            color: Colors.blue,
          )),
        ),
      ),
    );
  }}
