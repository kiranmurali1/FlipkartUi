import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:project_1/fabrands.dart';
import 'package:project_1/models/name_list_model.dart';
import 'package:flutter/material.dart';
import 'flpicon.dart';

class FlipkartUi extends StatefulWidget {
  const FlipkartUi({super.key});

  @override
  State<FlipkartUi> createState() => _FlipkartUiState();
}

class _FlipkartUiState extends State<FlipkartUi> {
  List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://rukminim2.flixcart.com/image/416/416/ke4kjgw0/printer/f/x/7/brother-dcp-b7500d-original-imafuvbyfgt5p9fr.jpeg?q=70',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  int currentIndex = 0;
  int beenPressed = 0;
  bool lglight = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                width: 160,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: beenPressed == 0
                          ? Colors.blue.shade600
                          : Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    setState(() {
                      beenPressed = 0;
                    });
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                          width: 22,
                          height: 22,
                          "https://seeklogo.com/images/F/flipkart-logo-3F33927DAA-seeklogo.com.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Flipkart",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 160,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          beenPressed == 1 ? Colors.green : Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    setState(() {
                      beenPressed = 1;
                    });
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Image.network(
                          width: 22,
                          height: 22,
                          "https://seeklogo.com/images/F/flipkart-logo-3F33927DAA-seeklogo.com.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Grocery",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      "Brand Mall",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                    Switch(
                      value: lglight,
                      activeColor: Colors.white,
                      activeTrackColor: Colors.blue.shade800,
                      onChanged: (value) {
                        setState(() {
                          lglight = value;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  width: 290,
                  height: 40,
                  child: Expanded(
                      child: TextFormField(
                    onTap: () {},
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_rounded),
                        hintText: "Search for Product",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        suffixIcon: SizedBox(
                          width: 100,
                          height: 30,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.mic),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.camera_alt_outlined))
                              ]),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                            ))),
                  )),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  // height: 200,
                  width: MediaQuery.of(context).size.width,
                  // height: MediaQuery.of(context).size.height / 4,
                  child: CarouselSlider.builder(
                    itemCount: imgList.length,
                    itemBuilder: (context, index, realIndex) => Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        //color: Colors.cyan,
                        image: DecorationImage(
                            image: NetworkImage(
                              imgList[index],
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: MediaQuery.of(context).size.width / 3,
                  child: DotsIndicator(
                    dotsCount: imgList.length,
                    position: currentIndex.toInt(),
                    decorator: DotsDecorator(
                      color: Colors.grey,
                      activeColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: FlpIcon(),
            ),
            Text(
              "Favorite Brands For You",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: FaBrands(),
            ),
            Container(
              height: 160,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Image(
                height: 120,
                width: 180,
                alignment: Alignment.centerLeft,
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_-AcJP2AkSc3Kb-mYSluYZvFPX6sTL2y3DSsUK-mw7Nkwisq4g0ZLdrY1_MuyQB8Gjao&usqp=CAU"),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
