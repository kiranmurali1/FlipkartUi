import 'package:flutter/material.dart';
import 'package:project_1/models/name_list_model.dart';

class ListViewBuilderExample extends StatefulWidget {
  const ListViewBuilderExample({super.key});

  @override
  State<ListViewBuilderExample> createState() => _ListViewBuilderExampleState();
}

class _ListViewBuilderExampleState extends State<ListViewBuilderExample> {
  List<NameListModel> nameList = [
    NameListModel(
      name: "htf",
      fontSize: 15,
      textColor: Colors.green,
    ),
    NameListModel(
      name: "sdasd",
      fontSize: 17,
      textColor: Colors.black,
    ),
    NameListModel(
      name: "pijjp",
      fontSize: 35,
      textColor: Colors.red,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            height: index == 1 ? 35 : 40,
            width: 50,
            color: index % 3 == 0
                ? Colors.blue
                : index % 3 == 1
                    ? Colors.green
                    : Colors.red,
            margin: EdgeInsets.all(15),
            child: Center(
              child: Text(
                "fsdfs",
                // style: TextStyle(
                //     color: nameList[index].textColor,
                //     fontSize: nameList[index].fontSize!),
              ),
            ),
          );
        },
      ),
    );
  }
}
