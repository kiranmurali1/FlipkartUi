import 'package:flutter/material.dart';

class FlipkartNotifications extends StatefulWidget {
  const FlipkartNotifications({super.key});

  @override
  State<FlipkartNotifications> createState() => _FlipkartNotificationsState();
}

class _FlipkartNotificationsState extends State<FlipkartNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Container(
              color: Colors.yellowAccent,
              height: 600,
              width: 320,
              child: Text("Flipkart  Notifications ")),
        ),
      ),
    );
  }
}
