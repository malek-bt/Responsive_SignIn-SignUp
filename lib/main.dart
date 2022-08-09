import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login_screen.dart';
import 'package:flutter_application_1/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Login',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:LoginScreen() ,
    );
  }
}

