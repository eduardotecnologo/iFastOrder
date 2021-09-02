import 'package:flutter/material.dart';

import './screens/auth/login_page.dart';
import './screens/auth/register_page.dart';
import 'package:appifast/models/Restaurant.dart';
import './screens/restaurants/widgets/RestaurantCard.dart';
import './screens/restaurants/restaurants_page.dart';


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
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterPage(),
        '/restaurants': (context) => RestaurantsPage(),
      },
    );
  }
}
