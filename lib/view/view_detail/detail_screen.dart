import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parkingapps/style/style_text.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail_screen';

  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [

          Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.38,
                decoration: new BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: new DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.37), BlendMode.dstATop),
                    image: new AssetImage(
                      "assets/images/gracak.jpg",
                    ),
                  ),
                ),
                // child: Image.asset(
                //   "assets/images/gracak.jpg",
                //   fit: BoxFit.cover,
                // ),
              )),
          Positioned(
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Text(
                    "Entrance Gate",
                    style: myTextTheme(colors: Colors.white).headline6,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 14, 20, 14),
                  // padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.54,
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22)),
                    child: Column(
                      children: [
                        Container(
                          // width: MediaQuery.of(context).size.width * 0.2,
                          height: 96,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(6, 4, 0, 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 5, 16, 0),
                                  child: Image.asset(
                                    "assets/images/mapsdefault.png",
                                    width: 72,
                                    height: 72,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Jl. Cakrawala",
                                      style: myTextTheme().subtitle1,
                                    ),
                                    Container(
                                        width: 150,
                                        // height: 30,
                                        child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 0),
                                            child: Text.rich(
                                                softWrap: false,
                                                overflow: TextOverflow.fade,
                                                TextSpan(children: [
                                                  TextSpan(
                                                      text: "Open",
                                                      style: myTextTheme(
                                                        colors: Colors.green,
                                                        fontWeights:
                                                            FontWeight.bold,
                                                      ).overline),
                                                  TextSpan(
                                                      text: " 08:00 - 22:00",
                                                      style: myTextTheme(
                                                              fontWeights:
                                                                  FontWeight
                                                                      .w600)
                                                          .overline)
                                                ])))),
                                    Text(
                                      "Get Direction",
                                      style: myTextTheme(
                                              colors: Colors.blue,
                                              fontWeights: FontWeight.bold)
                                          .subtitle1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          indent: 16,
                          endIndent: 16,
                          thickness: 2,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(16, 4, 16, 17),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 13),
                                child: Text(
                                  "Venue In",
                                  style: myTextTheme(
                                    fontWeights: FontWeight.w400,
                                    colors:
                                        const Color.fromARGB(255, 35, 83, 143),
                                  ).headline5,
                                ),
                              ),
                              DescribeWidget(
                                deskripsi: "Flat Price Rp 4.000 / Hours",
                                icon: Icons.money,
                              ),
                              DescribeWidget(
                                deskripsi: "Capacity 500 Car",
                                icon: Icons.directions_car_filled_sharp,
                              ),
                              DescribeWidget(
                                deskripsi: "Rating 4.5",
                                icon: Icons.star,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Anonim - 11 Oct 2022",
                                    style: myTextTheme(
                                            fontWeights: FontWeight.bold)
                                        .subtitle1,
                                  ),
                                  Text("Parkiranya Luas! Bagus",
                                      style: myTextTheme().subtitle2),
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider(
                          indent: 16,
                          endIndent: 16,
                          thickness: 2,
                        ),
                        Container(
                          // alignment: Alignment.centerLeft,
                          margin: EdgeInsets.fromLTRB(16, 4, 16, 17),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                                child: Text(
                                  "Current Status",
                                  style: myTextTheme(
                                    fontWeights: FontWeight.w400,
                                    colors:
                                        const Color.fromARGB(255, 35, 83, 143),
                                  ).headline5,
                                ),
                              ),
                              Center(
                                child: Text("200 / 500 Car",
                                    style: myTextTheme(
                                            fontWeights: FontWeight.bold,
                                            colors: Colors.green)
                                        .subtitle2),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Center(
                                child: LinearPercentIndicator(
                                  barRadius: Radius.circular(15),
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  padding: EdgeInsets.symmetric(horizontal: 0),
                                  lineHeight: 8.0,
                                  percent: 0.2,
                                  progressColor: Colors.green,
                                ),
                              ),
                              SizedBox(
                                height: 21,
                              ),
                              Center(
                                  child: Text(
                                      "Current Location to Venue is 1.2 Km",
                                      style: myTextTheme().subtitle2))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 22),
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 35, 83, 143),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      "Book Now",
                      textAlign: TextAlign.center,
                      style: myTextTheme(
                              colors: Colors.white,
                              fontWeights: FontWeight.w600)
                          .button,
                    ),
                  ),
                ),
              ],
            ),
          ),
       
                 Positioned(
            top: 0,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(21,24,21,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                  Text(
                    "Gracak Parking Lot",
                    style: myTextTheme(
                      fontWeights: FontWeight.w600,
                      colors: Colors.white,
                    ).headline5,
                  ),
                ],
              ),
            )),
        ]),
      ),
    );
  }
}

class DescribeWidget extends StatelessWidget {
  DescribeWidget({Key? key, required this.deskripsi, required this.icon})
      : super(key: key);
  String deskripsi;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          size: 24,
          icon,
          color: const Color.fromARGB(255, 35, 83, 143),
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          deskripsi,
          style: myTextTheme( fontWeights: FontWeight.w500).subtitle1,
        )
      ],
    );
  }
}
