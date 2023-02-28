import 'package:flutter/material.dart';
import 'login.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        darkTheme: ThemeData.dark(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Material(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Home Page'),
            ),
            body: Center(child: Text('Welcome to Page'),),
          ),
        )
    );
  }
}
