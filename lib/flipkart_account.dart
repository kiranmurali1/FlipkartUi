import 'package:flutter/material.dart';

class FlipkartAccount extends StatefulWidget {
  const FlipkartAccount({super.key});

  @override
  State<FlipkartAccount> createState() => _FlipkartAccountState();
}

class _FlipkartAccountState extends State<FlipkartAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 320,
          height: 600,
          child: Center(
            child: Text(
              "Flipkart account",
              style: TextStyle(color: Colors.deepPurple, fontSize: 26),
            ),
          )),
    );
  }
}
