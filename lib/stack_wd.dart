import 'package:flutter/material.dart';

class StackWd extends StatefulWidget {
  const StackWd({super.key});

  @override
  State<StackWd> createState() => _StackWdState();
}

class _StackWdState extends State<StackWd> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 330,
        height: 600,
        color: Colors.grey,
        child: Stack(
            textDirection: TextDirection.rtl,
            alignment: Alignment.topLeft,
            children: [
              Positioned(
                left: 40,
                top: 300,
                child: Container(
                    width: 290,
                    height: 250,
                    color: Colors.red,
                    child: Image.network(
                      'https://www.filmibeat.com/fanimg/artist/2447/mammootty-photos-images-75385.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                left: 100,
                top: 100,
                child: Container(
                  width: 250,
                  height: 250,
                  color: Colors.blue,
                  child: Image.network(
                      'https://imgd.aeplcdn.com/370x208/n/cw/ec/32951/cayenne-exterior-right-front-three-quarter.jpeg?q=80',
                      fit: BoxFit.fitWidth),
                ),
              ),
              Positioned(
                left: -100,
                top: 100,
                child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.yellowAccent,
                    child: Text(
                      'Apple',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    )),
              ),
            ]),
      ),
    );
  }
}
