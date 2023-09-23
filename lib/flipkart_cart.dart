import 'package:flutter/material.dart';

class FipkartCart extends StatefulWidget {
  const FipkartCart({super.key});

  @override
  State<FipkartCart> createState() => _FipkartCartState();
}

class _FipkartCartState extends State<FipkartCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Container(
              color: Colors.orangeAccent,
              height: 600,
              width: 320,
              child: Text("Flipkart Carts ")),
        ),
      ),
    );
  }
}
