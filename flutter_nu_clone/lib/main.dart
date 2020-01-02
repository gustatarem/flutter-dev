import 'package:flutter/material.dart';
import 'package:flutter_nu_clone/pages/home_page.dart';
import 'package:flutter_nu_clone/pages/login_page.dart';
import 'package:flutter_nu_clone/services/service_locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Nubank',
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: LoginPage(),
    );
  }   
}
