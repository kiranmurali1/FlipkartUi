import 'package:flutter/material.dart';

class ListViewver extends StatefulWidget {
  const ListViewver({super.key});

  @override
  State<ListViewver> createState() => _ListViewverState();
}

class _ListViewverState extends State<ListViewver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.indigo),
      body: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 12,
          itemBuilder: (context, index) {
            return Container(
              height: 10,
              width: 50,
              color: index % 3 == 0
                  ? Colors.blue
                  : index % 3 == 1
                      ? Colors.green
                      : Colors.red,
              child: Center(
                child: Text(
                  "kiran",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              margin: EdgeInsets.all(10),
            );
          },
        ),
      ),
    );
  }
}
