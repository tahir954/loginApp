import 'package:flutter/material.dart';
import 'package:loginapp/pages/home_page.dart';
import 'package:loginapp/pages/login.dart';
import 'routes/routes.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      home: HomePage(),
      initialRoute: '/login',
      routes: {
        MyRoutes.homeRoute:(context)=>HomePage(),
        MyRoutes.loginRoute:(context)=>Login(),
      },
    );
  }
}