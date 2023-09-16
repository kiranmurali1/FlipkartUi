import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_1/fabrands.dart';
import 'package:project_1/flipkart_ui.dart';
import 'package:project_1/flpicon.dart';

import 'package:project_1/list_view_builder_example.dart';
import 'package:project_1/list_view_ver.dart';
import 'package:project_1/login_new.dart';
import 'package:project_1/page1.dart';

import 'package:project_1/reh.dart';
import 'package:project_1/stack_wd.dart';

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
        home: FlipkartUi());
  }
}
