import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: TextField(
        keyboardType: TextInputType.text,
        onChanged: (String textValue) {
          print("" + textValue);
        },
        onTap: () {
          print("Taped");
        },
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                  width: 3,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                )),
            icon: Icon(Icons.account_circle),
            iconColor: Colors.indigo,
            suffixIcon: Icon(
              Icons.account_balance,
              color: Colors.lime,
            ),
            suffixText: "data",
            labelText: "username",
            contentPadding: EdgeInsets.all(20)),
      ),
    ));
  }
}
