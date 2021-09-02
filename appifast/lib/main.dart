import 'package:appifast/screens/autha/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(IfastOrderApp());


class IfastOrderApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iFastOrder',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(171,43,36, 1),
        backgroundColor: Colors.white,
        accentColor: Colors.black,
        brightness: Brightness.dark
      ),
      home: LoginScreen(),
    );
  }
}
