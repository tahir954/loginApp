import 'package:flutter/material.dart';
import 'package:loginapp/routes/routes.dart';
import 'package:loginapp/text_properties.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  String Name='';

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
                  GestureDetector(
                    onTap: () => print('Clicked'),
                    child: InkWell(
                      splashColor: Colors.amber,
                      radius: 30,
                      onTap: () => Navigator.pushNamed(context, MyRoutes.homeRoute),
                      child: AnimatedContainer(
                        duration:const Duration(seconds: 5),
                        decoration: const BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.all(Radius.circular(5),
                          ),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 30),
                            child: Text(
                              'Login',
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
