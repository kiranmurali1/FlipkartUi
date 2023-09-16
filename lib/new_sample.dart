import 'package:flutter/material.dart';

class NewSample extends StatefulWidget {
  const NewSample({super.key});

  @override
  State<NewSample> createState() => _NewSampleState();
}

class _NewSampleState extends State<NewSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: MediaQuery.of(context).size.width * .7,
            height: 400,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
                color: Colors.cyan,
                border: Border.all(
                  color: Colors.green,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: Offset(20, 10),
                  ),
                ]),
            child: Center(
              child: Text(
                'kiran murali',
                style: TextStyle(fontSize: 25),
              ),
            )),
      ),
    );
  }
}
