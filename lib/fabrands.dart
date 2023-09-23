import 'package:flutter/material.dart';
import 'package:project_1/br_printer.dart';

import 'flip_class.dart';
import 'new_item_models.dart';

class FaBrands extends StatefulWidget {
  const FaBrands({super.key});

  @override
  State<FaBrands> createState() => _FaBrandsState();
}

class _FaBrandsState extends State<FaBrands> {
  // List<String> FabrimgList = [
  //   "https://rukminim2.flixcart.com/flap/200/200/image/20c224cd52ae7a87.jpg?q=70",
  //   "https://rukminim2.flixcart.com/image/416/416/ke4kjgw0/printer/f/x/7/brother-dcp-b7500d-original-imafuvbyfgt5p9fr.jpeg?q=70",
  //   "https://rukminim2.flixcart.com/image/200/200/k5o7r0w0/dslr-camera/m/3/2/z-50-z-50-nikon-original-imafzasj4nxzcxgn.jpeg?q=70",
  //   "https://rukminim2.flixcart.com/image/200/200/printer/j/j/y/hp-laserjet-m1005-multifunction-original-imadxhzpeb9qbrfg.jpeg?q=70",
  //   "https://rukminim2.flixcart.com/image/200/200/xif0q/monitor/v/i/j/-original-imagn6h2gfmkm774.jpeg?q=70",
  //   "https://rukminim2.flixcart.com/image/200/200/k4a7c7k0/printer/y/j/z/canon-e3370-original-imafn2wyyxjjvzd6.jpeg?q=70",
  //   "https://m.media-amazon.com/images/I/61ERDR3tATL._AC._SR360,460.jpg",
  // ];
  // List<String> FaBnamesList = [
  //   'Havells',
  //   'Printers',
  //   'Nikon',
  //   'Canon',
  //   'Acer',
  //   'Epson',
  //   'SanDisk',
  // ];

  List<NewItemModels> items = [
    NewItemModels(
      productName: "Trimmer",
      imageUrl:
          "https://rukminim2.flixcart.com/flap/200/200/image/20c224cd52ae7a87.jpg?q=70",
      description:
          'BOMBAY SHAVING COMPANY Power Play Trimmer for Men \nTrimmer 75 min Runtime 5 Length Settings  (Black)',
      price: 2000,
    ),
    NewItemModels(
      productName: "Printer",
      imageUrl:
          "https://rukminim2.flixcart.com/image/416/416/ke4kjgw0/printer/f/x/7/brother-dcp-b7500d-original-imafuvbyfgt5p9fr.jpeg?q=70",
      description:
          'S.R.J DCP-L2520D Multi-Function Monochrome Laser Printer \n  with Auto-Duplex Printing Multi-function Color Inkjet Printer',
      price: 8999,
    ),
    NewItemModels(
      productName: "Camera",
      imageUrl:
          "https://rukminim2.flixcart.com/image/200/200/k5o7r0w0/dslr-camera/m/3/2/z-50-z-50-nikon-original-imafzasj4nxzcxgn.jpeg?q=70",
      description:
          'The Canon EOS 90D is designed for those who are out to sharpen their photography skills. The camera lets you shoot high-quality 4K videos, derive images from 4K videos, shoot time-lapse videos, and more',
      price: 49909,
    ),
    NewItemModels(
      productName: "Canon",
      imageUrl:
          "https://rukminim2.flixcart.com/image/200/200/printer/j/j/y/hp-laserjet-m1005-multifunction-original-imadxhzpeb9qbrfg.jpeg?q=70",
      description:
          '4K UHD (6K oversampling) and 4K 60p, Up to 23 fps continuous shooting with AF/AE tracking, -4EV low light focusing2, YouTube live streaming, 7.5cm 1.04-million dot Vari-Angle Touchscreen',
      price: 22222,
    ),
    NewItemModels(
      productName: "Acer",
      imageUrl:
          "https://rukminim2.flixcart.com/image/200/200/xif0q/monitor/v/i/j/-original-imagn6h2gfmkm774.jpeg?q=70",
      description:
          'Acer 27 inch Full HD LED Backlit IPS Panel White Colour Monitor (HA270) \n (Frameless, AMD Free Sync, Response Time: 4 ms, 75 Hz Refresh Rate)',
      price: 9999,
    ),
    NewItemModels(
      productName: 'Epson',
      imageUrl:
          "https://rukminim2.flixcart.com/image/200/200/k4a7c7k0/printer/y/j/z/canon-e3370-original-imafn2wyyxjjvzd6.jpeg?q=70",
      description:
          "Epson L3200 Multi-function Color Inkjet Printer (Color Page Cost: 9 Paise | Black Page Cost: 24 Paise)  (Black, Ink Tank, 4 Ink Bottles Included)",
      price: 12998,
    ),
    NewItemModels(
      productName: " SanDisk",
      imageUrl:
          "https://m.media-amazon.com/images/I/61ERDR3tATL._AC._SR360,460.jpg",
      description: "SanDisk Cruze Blade SDCZ50 64 GB Pen Drive  (Red, Black)",
      price: 799,
    ),
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
                    GestureDetector(
                      onTap: () {
                        print("taped on the container$index");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FlipClass(
                                imageUrl: items[index].imageUrl,
                                description: items[index].description,
                                price: items[index].price,
                                productName: items[index].productName,
                              ),
                            ));
                      },
                      child: Container(
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
                                items[index].imageUrl,
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
                                  items[index].productName,
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
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
            itemCount: items.length,
          ),
        ),
      ],
    );
  }
}
