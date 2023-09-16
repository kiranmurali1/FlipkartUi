import 'package:flutter/material.dart';

class MultChild extends StatefulWidget {
  const MultChild({super.key});

  @override
  State<MultChild> createState() => _MultChildState();
}

class _MultChildState extends State<MultChild> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          scrollDirection: Axis.vertical,
          reverse: true,
          padding: EdgeInsets.all(10),
          children: [
            Container(
              color: Colors.red,
              width: 300,
              height: 80,
              decoration: BoxDecoration(),
              child: Text('Name 1',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )),
            ),
            Container(
              color: Colors.green,
              width: 300,
              height: 80,
              child: Text('Name 2',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )),
            ),
            Container(
              color: Colors.blue,
              width: 300,
              height: 80,
              child: Text('Name 3',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )),
            ),
            Container(
              color: Colors.brown,
              width: 300,
              height: 150,
              child: Text('Name 4',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )),
            ),
            Container(
              color: Colors.yellow,
              width: 300,
              height: 150,
              child: Text('Name 5',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )),
            ),
            Container(
              color: Colors.orange,
              width: 300,
              height: 150,
              child: Text('Name 6',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )),
            ),
            Container(
              color: Colors.brown,
              width: 300,
              height: 150,
              child: Text('Name 7',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ));
  }
}
