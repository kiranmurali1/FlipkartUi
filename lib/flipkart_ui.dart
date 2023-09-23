import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project_1/fabrands.dart';
import 'package:project_1/flip_bday.dart';
import 'package:project_1/flip_your_cart.dart';
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
    'https://www.jharkhandlab.com/wp-content/uploads/2022/09/1234-2.png',
    'https://static.wixstatic.com/media/198499_1755a02a0ec34d71a0fb5f28c53c6bfb~mv2.webp',
    'https://storiesflistgv2.blob.core.windows.net/stories/2018/08/plus_mainbanner.jpg',
    'https://1.bp.blogspot.com/-wbnbVOafmyo/V-TFi8zdrnI/AAAAAAAALd4/rXOwu27RLb0LiB1gSpzg4jq7BNcv-SntwCLcB/s640/Flipkart%2BThe%2BBig%2BBillion%2BDay%2Bloot%2Bsale.PNG',
    'https://newsroompost.com/wp-content/uploads/2022/09/Big-Billion-Days-sale.jpg',
    'https://cdn.paisawapas.com/blog/wp-content/uploads/2017/08/Flipkart-big-billion-day-sale-on-electronics.jpg'
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
                        textwidget(
                          heading: "Flipkart",
                          textweight: FontWeight.bold,
                          fontsize: 18,
                          textcolor: Colors.black,
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
                        textwidget(
                          heading: "Grocery",
                          fontsize: 18,
                          textweight: FontWeight.bold,
                          textcolor: Colors.black,
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
                      // child: Expanded(
                      child: TextFormField(
                        onTap: () {},
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search_rounded),
                            hintText: "Search for Product",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 14),
                            suffixIcon: SizedBox(
                              width: 100,
                              height: 30,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                      )
                      // ),
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
              // Text(
              //   "Favorite Brands For You",
              //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              // ),
              textwidget(
                  heading: "Favorite Brands For You",
                  fontsize: 20,
                  textweight: FontWeight.w400,
                  textcolor: Colors.black),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: FaBrands(),
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Image(
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  alignment: Alignment.centerLeft,
                  image: NetworkImage(
                      "https://images.hindustantimes.com/tech/img/2021/09/22/960x540/flipkart_big_billion_days_sale_2021_1631684957397_1632288305121_1632288311076.jpg"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                child: FlipBday(),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 90,
                child: Row(children: [
                  textwidget(
                      heading: ' 6 items in your cart',
                      fontsize: 18,
                      textcolor: Colors.black,
                      textweight: FontWeight.w400),
                  SizedBox(width: 100),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent),
                      onPressed: () {},
                      child: Text(
                        "Go to Cart",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ))
                ]),
              ),
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                color: Colors.cyanAccent,
                child: FlipYourCart(),
              ),
              Container(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                color: Colors.white,
                child: Row(
                  children: [
                    Image(
                        height: 120,
                        width: 100,
                        image: NetworkImage(
                          "https://rukminim2.flixcart.com/image/832/832/xif0q/watch/z/i/h/-original-imagpzzg8sgdgpku.jpeg?q=70",
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Rate Your Purchase",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 20,
                          width: 150,
                          child: Text(
                            "TIMEWEAR White Number Dial Brown Leather Strap ",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.green.shade800,
                          ),
                          onRatingUpdate: (a) {
                            print(a);
                          },
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.red,
        unselectedLabelStyle: TextStyle(color: Colors.cyan),
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(Icons.home_outlined),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Categories",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "account",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
        ],
      ),
    );
  }
}

class textwidget extends StatelessWidget {
  final String heading;
  final double fontsize;
  final Color textcolor;
  final FontWeight textweight;

  const textwidget({
    super.key,
    required this.heading,
    required this.fontsize,
    required this.textcolor,
    required this.textweight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
          fontSize: fontsize, fontWeight: textweight, color: textcolor),
    );
  }
}
