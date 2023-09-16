import 'package:flutter/material.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({super.key});

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text(
          "malayalam",
          style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        color: Colors.amber,
        // decoration: BoxDecoration(
        //   // borderRadius: BorderRadius.circular(50),
        //   image: DecorationImage(
        //     fit: BoxFit.cover,
        //     image: NetworkImage(
        //       "https://images.unsplash.com/photo-1579783483458-83d02161294e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=497&q=80",
        //     ),
        //   ),
        // ),
        child: Center(
            child: Container(
          width: 150,
          height: 150,
          color: Colors.red,
          child: Image.asset("assets/download.jpg"),
        )),
      ),
    );
  }
}
