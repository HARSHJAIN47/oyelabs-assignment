// ignore_for_file: import_of_legacy_library_into_null_safe, use_key_in_widget_constructors

// import 'dart:async';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oyelabs_assignment/screens/loginscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.only(top: 200),
                child: Image.asset("assets/image1.jpg")),
            Container(
              margin: const EdgeInsets.only(top: 220),
              child: const Text(
                "Powered By Oyelabs",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Text(
              "WITH LOVE♥",
              style: TextStyle(color: Colors.blue.shade100, fontSize: 15),
            ),
          ],
        ),
      ),
    );
    //
    //
  }
}
