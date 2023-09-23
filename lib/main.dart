import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_1/flip_class.dart';
import 'package:project_1/flipkart_Categories.dart';
import 'package:project_1/flipkart_account.dart';
import 'package:project_1/flipkart_notifications.dart';

import 'package:project_1/flipkart_ui.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //  initialRoute: 'hello',
      //routes: {
      // 'hello': (context) => Hello(),
      // 'register': (context) => MyRegister(),
      //},
      home: FlipkartAccount(),
    );
  }
}
