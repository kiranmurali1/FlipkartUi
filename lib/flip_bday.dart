import 'package:flutter/material.dart';

class FlipBday extends StatefulWidget {
  const FlipBday({super.key});

  @override
  State<FlipBday> createState() => _FlipBdayState();
}

class _FlipBdayState extends State<FlipBday> {
  List<String> FlpimgList = [
    "https://rukminim2.flixcart.com/image/832/832/xif0q/suitcase/n/p/4/-original-imagsem4fzczqxnu.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/832/832/xif0q/shoe/q/u/d/-original-imagtajgpzuyfhc6.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/kon887k0/power-bank/o/3/w/power-bank-boost-pro-30000mah-18w-30000-pb3018zm-mi-original-imag32427rgygpyg.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/xif0q/deodorant/j/r/t/-original-imagsbswjnpzweaj.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/kjlrb0w0/electric-kettle/g/h/w/prestige-prestige-pkoss-pkoss-1-5-original-imafz4wtzxhkau3g.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/xif0q/helmet/t/o/i/-original-imagshz9azkkftmj.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/xif0q/smartwatch/k/h/s/1-83-38083pp01-android-ios-fastrack-yes-original-imagnhzeabmcfspe.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/l5h2xe80/mobile/5/x/r/-original-imagg4xza5rehdqv.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/z/j/m/11x-5g-rmx3785-realme-original-imagsjx45pgvavdm.jpeg?q=70",
  ];
  List<String> FlpBnameList = [
    "Travel Partner",
    "Walking Shoes",
    "Find Your Path",
    "PUMA",
    "Clarks",
    "Steelbird",
    "Fastrack",
    "Mi Power Bank",
    "Realme",
  ];
  List<String> FlpOffer = [
    "Min.65% Off",
    "Min 30% Off",
    "Min 50% Off",
    "From Rs 199",
    "Min 50% Off",
    "Min 65% Off",
    "Min 40% Off",
    "From Rs 999",
    "Min 10% Off",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 240,
        child: GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        // mainAxisExtent: 30,
      ),
      // shrinkWrap: true,
      // physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 9,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              // height: 90,
              // width: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.grey.shade200,
                  border: Border.fromBorderSide(BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.grey.shade200,
                  ))),
              child: Image.network(
                FlpimgList[index],
                height: 70,
                width: 80,
                alignment: Alignment.center,
              ),
            ),
            Container(
              height: 15,
              width: 80,
              color: Colors.black,
              child: Center(
                  child: Text(
                FlpBnameList[index],
                style: TextStyle(
                    fontSize: 11,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Text(FlpOffer[index], style: TextStyle(fontSize: 10)),
          ],
        );
      },
    ));
  }
}
