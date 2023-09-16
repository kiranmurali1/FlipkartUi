import 'package:flutter/material.dart';

class Reh extends StatefulWidget {
  const Reh({super.key});

  @override
  State<Reh> createState() => _RehState();
}

class _RehState extends State<Reh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: 320, height: 600, color: Colors.cyan),
    );
  }
}
