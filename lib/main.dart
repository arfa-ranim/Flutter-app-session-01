
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
//Turn MyApp into a StatefulWidget
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool changed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      //adding Colors (AppBar and background)
      home: Scaffold(
        //a background that changes ...
        backgroundColor: changed ? Colors.amber.shade50 : Colors.deepPurple.shade50,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          actions: [
            Icon(Icons.message)
          ],
          leading: Icon(Icons.menu),
          title: const Text('My Travel Journal' ),
        ),
        //More texts with different styles
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to Flutter', style: TextStyle(
                fontSize: 33.0,
                color: Colors.blue,
              )),
              Text('first project', style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              )),
              Text('ranim arfa ', style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
                color: Colors.green,
              )),
              //adding 2 images
              Image.network('https://picsum.photos/id/10/200/120'),
              Image.network(
                changed
                    ? 'https://picsum.photos/id/30/200/120'
                    : 'https://picsum.photos/id/20/200/120',
              ),
              //adding a button that changes imgs
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    changed = !changed;
                  });
                },
                child: Text('Change'),
              ),
            ],
          ),
        ),
      ),
    );
  }}
