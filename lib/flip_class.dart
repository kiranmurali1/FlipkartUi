import 'package:flutter/material.dart';

class FlipClass extends StatefulWidget {
  final String productName;
  final String imageUrl;
  final String description;
  final double price;
  const FlipClass(
      {super.key,
      required this.productName,
      required this.imageUrl,
      required this.description,
      required this.price});

  @override
  State<FlipClass> createState() => _FlipClassState();
}

class _FlipClassState extends State<FlipClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Center(
            child: Container(
                height: 200,
                width: 120,
                child: Image.network(
                  widget.imageUrl,
                  width: 100,
                  height: 150,
                  alignment: Alignment.center,
                )),
          ),
          Container(
            height: 28,
            width: 200,
            color: Colors.grey.shade300,
            child: Center(
              child: Text(
                widget.productName,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 100,
            width: 200,
            color: Colors.grey.shade300,
            child: Center(
              child: Text(
                widget.description,
                style: const TextStyle(fontSize: 12),
              ),
            ),
          ),
          Container(
            height: 28,
            width: 200,
            color: Colors.grey.shade300,
            child: Center(
              child: Text(
                'Price :${widget.price.toString()}',
                style: const TextStyle(fontSize: 12),
              ),
            ),
          )
        ],
      )),
    );
  }
}
