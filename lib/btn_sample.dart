import 'package:flutter/material.dart';

class BtnSample extends StatefulWidget {
  const BtnSample({super.key});

  @override
  State<BtnSample> createState() => _BtnSampleState();
}

class _BtnSampleState extends State<BtnSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
            backgroundColor: Colors.orange,
            elevation: 10,
            title: Text("kiran murali"),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  print("Icon one clicked");
                },
                icon: Icon(Icons.account_circle),
              ),
              IconButton(
                onPressed: () {
                  print("Icon two clicked");
                },
                icon: Icon(Icons.ad_units_outlined),
              ),
            ]),
        floatingActionButton: FilledButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        endDrawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              child: Text("mallu Devloper menu"),
              decoration: BoxDecoration(color: Colors.lightBlueAccent),
            ),
            ListTile(
              title: Text("Favourites"),
              subtitle: Text("clik to go to fav page"),
              onTap: () {},
              onLongPress: () {},
              leading: Icon(Icons.favorite),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Kiran Murali"),
              subtitle: Text("8921899434"),
              onTap: () {},
              onLongPress: () {},
              leading: Icon(Icons.account_circle),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              title: Text("omana murali"),
              subtitle: Text("1010101010"),
              onTap: () {},
              onLongPress: () {},
              leading: Icon(Icons.account_circle),
              trailing: Icon(Icons.call),
            ),
          ],
        )));
  }
}
