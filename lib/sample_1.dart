import 'package:flutter/material.dart';

class Sample1 extends StatefulWidget {
  const Sample1({super.key});

  @override
  State<Sample1> createState() => _Sample1State();
}

class _Sample1State extends State<Sample1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.green,

        child: Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(height: 1200,width:90,color: Colors.amber,child:Center(child: Text('sample1')), ),
            Container(height:1200,width: 90,color: Colors.greenAccent,child: Center(child: Text('sample 2')) ,),
            Container(height: 1200,width: 90,color: Colors.limeAccent,child: Center(child: Text('sample 3')),),
            Container(height: 1200,width: 90,color: Colors.deepOrangeAccent,child: Center(child: Text('sample 4')) ,),


        ]


      )
      ),
    );
  }
}
