import 'package:flutter/material.dart';

class FlpIcon extends StatefulWidget {
  const FlpIcon({super.key});

  @override
  State<FlpIcon> createState() => _FlpIconState();
}

class _FlpIconState extends State<FlpIcon> {
  List<String> simgList = [
    "https://cdn-icons-png.flaticon.com/128/3670/3670032.png",
    "https://rukminim2.flixcart.com/image/416/416/ke4kjgw0/printer/f/x/7/brother-dcp-b7500d-original-imafuvbyfgt5p9fr.jpeg?q=70",
    "https://t4.ftcdn.net/jpg/06/08/42/21/240_F_608422185_IZkFDGUedNOSJZ2CMtWRH3zFhcwHPzMa.jpg",
    "https://cdn-icons-png.flaticon.com/128/639/639365.png",
    "https://cdn-icons-png.flaticon.com/128/174/174883.png",
    "https://cdn-icons-png.flaticon.com/128/13/13973.png",
  ];
  List<String> namesimgList = [
    ' supercoin',
    'Plus',
    'Spoyi',
    'money+',
    "liveShop+",
    'Game Zone',
  ];
  List<String> numList = ['582', 'NEW', 'NEW'];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Stack(children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey.shade300),
                      child: Center(
                        child: Image.network(
                          simgList[index],
                          height: 33,
                          width: 33,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                    index <= 2
                        ? Positioned(
                            left: 15,
                            top: 50,
                            child: Container(
                                height: 14,
                                width: 40,
                                color: Colors.green.shade600,
                                child: Center(
                                  child: Text(
                                    numList[index],
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          )
                        : Container(),
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    namesimgList[index],
                    style: const TextStyle(
                        fontSize: 11, fontWeight: FontWeight.bold),
                  )
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 5,
              );
            },
            itemCount: simgList.length,
          ),
        ),
      ],
    );
  }
}
