import 'package:flutter/material.dart';

class SingleChild extends StatefulWidget {
  const SingleChild({super.key});

  @override
  State<SingleChild> createState() => _SingleChildState();
}

class _SingleChildState extends State<SingleChild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SizedBox(
          width: 300,
          height: 100,
          child: Center(
            child: Text(
              'Kiran M M',
              style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.w700,
                fontSize: 23,
              ),
            ),
          )),
    );
  }
}
