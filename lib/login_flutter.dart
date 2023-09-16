import 'package:flutter/material.dart';

class LoginFlutter extends StatefulWidget {
  const LoginFlutter({super.key});

  @override
  State<LoginFlutter> createState() => _LoginFlutterState();
}

class _LoginFlutterState extends State<LoginFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Login Page",
            style: TextStyle(color: Colors.white,fontSize: 22 ,fontWeight: FontWeight.bold),


          )),

    );
  }
}
