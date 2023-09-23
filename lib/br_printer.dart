import 'package:flutter/material.dart';

class BrPrinter extends StatefulWidget {
  const BrPrinter({super.key});

  @override
  State<BrPrinter> createState() => _BrPrinterState();
}

class _BrPrinterState extends State<BrPrinter> {
  List<String> BrPrimgList = [
    "https://rukminim2.flixcart.com/image/416/416/xif0q/printer/s/g/r/-original-imagqsnfkga3mgkf.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/klgx0280/printer/y/d/k/g2012-canon-original-imagyh8sqwuqzk7y.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/kah413k0/printer/k/f/g/brother-hl-l2321d-ind-original-imafsffc6q5bfym4.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/612/612/jn7rzww0/printer/s/z/z/samsung-scx-3401-xip-original-imaf9y6sgxrahezz.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/612/612/l1qrjbk0/printer/c/b/c/p3302dw-pantum-original-imagd8nezdgfjutr.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/jjrgosw0/printer/w/h/r/xerox-ph-3020-original-imaf79d6dqquhdvt.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/416/416/kdoup3k0/printer/y/t/k/ricoh-sp-6430dn-original-imafujhb3sbrhnmg.jpeg?q=70",
    "https://rukminim2.flixcart.com/image/612/612/jvy4vbk0/printer/5/m/m/panasonic-kx-fp701cx-fax-machine-original-imafgpkzkgmxxbr3.jpeg?q=70",
  ];
  List<String> BrPrname = [
    "Epson",
    "Canon",
    "Brother",
    "SAMSUNG",
    "PANTUM",
    "Xerox",
    "Ricoh",
    "Panasonic",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text("Printer",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              )),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: 120,
              alignment: Alignment.center,
              child: ListView.separated(
                  itemCount: BrPrimgList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.white,
                              border: Border.fromBorderSide(
                                BorderSide(style: BorderStyle.solid),
                              )),
                          child: Column(children: [
                            Center(
                              child: Image.network(
                                BrPrimgList[index],
                                height: 80,
                                width: 80,
                                alignment: Alignment.center,
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 80,
                              child: Center(
                                  child: Text(
                                BrPrname[index],
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent),
                              )),
                            )
                          ]),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 5,
                    );
                  }),
            ),
          )
        ],
      ),
    ));
  }
}
