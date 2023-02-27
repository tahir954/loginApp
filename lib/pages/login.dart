import 'package:flutter/material.dart';
import 'package:loginapp/routes/routes.dart';
import 'package:loginapp/text_properties.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    String name = "";
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/login.gif',
              width: double.maxFinite,
              height: 250,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: txtStyl,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                    style: txtstl,
                    decoration: uperdeco,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscureText: true,
                    style: const TextStyle(
                        fontSize: 15, fontStyle: FontStyle.italic),
                    decoration: lowdeco,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(

                  )
                  /*OutlinedButton(
                    style: btnProp,
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: const Text('Login'),
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
