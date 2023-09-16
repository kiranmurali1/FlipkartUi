import 'package:flutter/material.dart';

class GrdSample extends StatefulWidget {
  const GrdSample({super.key});

  @override
  State<GrdSample> createState() => _GrdSampleState();
}

class _GrdSampleState extends State<GrdSample> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey,
        child: GridView.count(
          crossAxisCount: 1,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              color: Colors.red,
              child: Text("one"),
            ),
            Container(
              color: Colors.deepOrangeAccent,
              child: Text("two"),
            ),
            Container(
              color: Colors.blue,
              child: Text("three"),
            ),
            Container(
              color: Colors.purple,
              child: Text("four"),
            ),
            Container(
              color: Colors.yellowAccent,
              child: Text("four"),
            ),
            Container(
              color: Colors.brown,
              child: Text("four"),
            ),
          ],
        ));
  }
}
