import 'package:flutter/material.dart';

import 'cart_item_models.dart';

class FlipYourCart extends StatefulWidget {
  const FlipYourCart({
    super.key,
  });

  @override
  State<FlipYourCart> createState() => _FlipYourCartState();
}

class _FlipYourCartState extends State<FlipYourCart> {
  List<NewCartItemsModel> cartitems = [
    NewCartItemsModel(
      productBrand: "NIVEA",
      productName: "NIVEA Fresh Power Deodorant Roll",
      imageUrl:
          "https://rukminim2.flixcart.com/image/416/416/xif0q/deodorant/g/j/l/-original-imagrzpaxmhrrz2p.jpeg?q=70",
      offprice: 100,
      orgprice: 199,
      discount: "50% off",
      flpimageurl:
          "https://seeklogo.com/images/F/flipkart-logo-3F33927DAA-seeklogo.com.png",
      coin: 25,
      finalvalue: 1430,
      supercoinurl:
          "https://icon-library.com/images/free-coin-icon/free-coin-icon-7.jpg",
    ),
    NewCartItemsModel(
      productBrand: "NESCAFE",
      productName: "Nescafe Classic CoffeePowder",
      imageUrl:
          "https://rukminim2.flixcart.com/image/416/416/xif0q/coffee/u/8/y/-original-imagqdu6uzz5z2aq.jpeg?q=70",
      offprice: 310,
      orgprice: 330,
      discount: "6% off",
      flpimageurl:
          "https://seeklogo.com/images/F/flipkart-logo-3F33927DAA-seeklogo.com.png",
    ),
    NewCartItemsModel(
      productBrand: "SANDISK",
      productName: "SanDisk Extreme 256 GB MicroSD Card",
      imageUrl:
          "https://rukminim2.flixcart.com/image/416/416/xif0q/memory-card/microsd-card/e/w/a/sdsqxav-256g-gn6mn-sandisk-original-imaggvvnfmdzfncv.jpeg?q=70",
      offprice: 1949,
      orgprice: 5600,
      discount: "65% Off",
      flpimageurl:
          "https://seeklogo.com/images/F/flipkart-logo-3F33927DAA-seeklogo.com.png",
    ),
    NewCartItemsModel(
      productBrand: "SAFFOLA",
      productName: "Saffola Fittify Original Peanut Butter ",
      imageUrl:
          "https://rukminim2.flixcart.com/image/416/416/xif0q/jam-spread/r/a/1/925-original-peanut-butter-with-omega-3-extra-crunchy-jar-1-nut-original-imagrzn6hfnhm7d2.jpeg?q=70",
      offprice: 202,
      orgprice: 449,
      discount: "55% Off",
      flpimageurl:
          "https://seeklogo.com/images/F/flipkart-logo-3F33927DAA-seeklogo.com.png",
    ),
    NewCartItemsModel(
      productBrand: "VOLT",
      productName: "Volt Analog Watch - For Men 77085PP04",
      imageUrl:
          "https://rukminim2.flixcart.com/image/832/832/k4rcmfk0pkrrdj/watch-refurbished/k/u/t/c-77085pp04-sonata-original-imaf8qx7tstcg36n.jpeg?q=70",
      offprice: 377,
      orgprice: 725,
      discount: "48% Off",
      flpimageurl:
          "https://seeklogo.com/images/F/flipkart-logo-3F33927DAA-seeklogo.com.png",
    ),
    NewCartItemsModel(
      productBrand: "BOLT",
      productName: "Boult Audio W20 with Zen ENC Mic",
      imageUrl:
          "https://rukminim2.flixcart.com/image/416/416/xif0q/headphone/1/y/s/-original-imagt5cwr7bpuzzt.jpeg?q=70",
      offprice: 999,
      orgprice: 2499,
      discount: "60% Off",
      flpimageurl:
          "https://seeklogo.com/images/F/flipkart-logo-3F33927DAA-seeklogo.com.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          color: Colors.white,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 150,
                          height: 250,
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
                                  cartitems[index].imageUrl,
                                  height: 100,
                                  width: 100,
                                  alignment: Alignment.center,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                cartitems[index].productBrand,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                cartitems[index].productName,
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                              // Container(
                              //   height: 35,
                              //   width: 120,
                              //   color: Colors.white,
                              //   child: Center(
                              //     child: Text(
                              //       cartitems[index].productName,
                              //       style: const TextStyle(fontSize: 14),
                              //     ),
                              //   ),
                              // ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    cartitems[index].orgprice.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    cartitems[index].offprice.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    cartitems[index].discount.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.green.shade500),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image(
                                    height: 10,
                                    width: 10,
                                    image: NetworkImage(cartitems[index]
                                        .flpimageurl
                                        .toString()),
                                  )
                                ],
                              ),
                              index == 1
                                  ? Text("or Pay Rs 1130 + ©25")
                                  : SizedBox(),

                              Text("only few left",
                                  style: TextStyle(color: Colors.redAccent))
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 5,
                );
              },
              itemCount: cartitems.length),
        ),
      ],
    );
  }
}
