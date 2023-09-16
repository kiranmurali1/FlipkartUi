import 'package:flutter/material.dart';

class FaBrands extends StatefulWidget {
  const FaBrands({super.key});

  @override
  State<FaBrands> createState() => _FaBrandsState();
}

class _FaBrandsState extends State<FaBrands> {
  List<String> FabrimgList = [
    "https://rukminim2.flixcart.com/flap/200/200/image/20c224cd52ae7a87.jpg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/ke4kjgw0/printer/f/x/7/brother-dcp-b7500d-original-imafuvbyfgt5p9fr.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/200/200/k5o7r0w0/dslr-camera/m/3/2/z-50-z-50-nikon-original-imafzasj4nxzcxgn.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/200/200/printer/j/j/y/hp-laserjet-m1005-multifunction-original-imadxhzpeb9qbrfg.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/200/200/xif0q/monitor/v/i/j/-original-imagn6h2gfmkm774.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/200/200/k4a7c7k0/printer/y/j/z/canon-e3370-original-imafn2wyyxjjvzd6.jpeg?q=70",
    "https://m.media-amazon.com/images/I/61ERDR3tATL._AC._SR360,460.jpg",
  ];
  List<String> FaBnamesList = [
    'Havells',
    'Brother',
    'Nikon',
    'Canon',
    'Acer',
    'Epson',
    'SanDisk',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 140,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Stack(children: [
                    Container(
                      width: 100,
                      height: 120,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          border: Border.fromBorderSide(BorderSide(
                              style: BorderStyle.solid,
                              color: Colors.grey.shade200))),
                      child: Column(
                        children: [
                          Center(
                            child: Image.network(
                              FabrimgList[index],
                              height: 90,
                              width: 80,
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            height: 28,
                            width: 100,
                            color: Colors.grey.shade300,
                            child: Center(
                              child: Text(
                                FaBnamesList[index],
                                style: const TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: 5,
              );
            },
            itemCount: FabrimgList.length,
          ),
        ),
      ],
    );
  }
}
