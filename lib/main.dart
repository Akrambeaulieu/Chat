import 'package:app_chat/HomeScreen.dart';
import 'package:app_chat/loginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'chat_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //chatPage is a package
      //homeScreen the design of my application
      home: LoginPage(title: 'loginUI'),
    );
  }
}
