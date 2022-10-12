import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parkingapps/style/style_text.dart';

class HomeSearchResult extends StatelessWidget {
  static const routeName = '/home_searchresult';
  const HomeSearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
                height: 145,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 117,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.black,
                            Color.fromARGB(255, 35, 83, 143),
                          ],
                        )),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(31, 0, 31, 0),
                        height: 48,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              isCollapsed: true,
                              prefixIcon: Icon(
                                Icons.location_on_rounded,
                                color: Color.fromARGB(255, 35, 83, 143),
                              ),
                              suffixIcon: Icon(Icons.search_rounded),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(21, 24, 21, 28),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              )),
                          Text(
                            "Search Result",
                            style: myTextTheme(
                                    colors: Colors.white,
                                    fontWeights: FontWeight.w600)
                                .headline5,
                          )
                        ],
                      ),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(27, 20, 27, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Filter Result",
                      style: myTextTheme(
                        fontWeights: FontWeight.w600,
                      ).headline5),
                  IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(27, 0, 27, 0),
                child: ListView.builder(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Container(
                        // width: MediaQuery.of(context).size.width * 0.2,
                        height: 96,
                        child: Card(
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(6, 4, 0, 4),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    child: Transform.scale(
                                      scale: 0.6,
                                      child: Image.asset(
                                        "assets/images/car_mini.png",
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                    width: 23,
                                    height: 23,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(8),
                                            topRight: Radius.circular(8)),
                                        color:
                                            Color.fromARGB(255, 35, 83, 143)),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 16, 0),
                                      child: Image.asset(
                                        "assets/images/mapsdefault.png",
                                        width: 72,
                                        height: 72,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Gracak Parking Lot",
                                            style: myTextTheme(
                                                    fontWeights:
                                                        FontWeight.bold)
                                                .subtitle1,
                                          ),
                                          Text(
                                            "Jl. Cakrawala",
                                            style: myTextTheme().subtitle1,
                                          ),
                                          Container(
                                              width: 150,
                                              // height: 30,
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 0, 4, 0),
                                                  child: Text.rich(
                                                      softWrap: false,
                                                      overflow:
                                                          TextOverflow.fade,
                                                      TextSpan(children: [
                                                        TextSpan(
                                                            text: "Open",
                                                            style: myTextTheme(
                                                              colors:
                                                                  Colors.green,
                                                              fontWeights:
                                                                  FontWeight
                                                                      .bold,
                                                            ).overline),
                                                        TextSpan(
                                                            text:
                                                                " 08:00 - 22:00",
                                                            style: myTextTheme(
                                                                    fontWeights:
                                                                        FontWeight
                                                                            .w600)
                                                                .overline)
                                                      ])))),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.green,
                                                size: 8,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text.rich(
                                                  softWrap: false,
                                                  overflow: TextOverflow.fade,
                                                  TextSpan(children: [
                                                    TextSpan(
                                                        text: "Available",
                                                        style: myTextTheme()
                                                            .overline),
                                                    TextSpan(
                                                        text: " - ",
                                                        style: myTextTheme()
                                                            .overline),
                                                    TextSpan(
                                                        text: "Car",
                                                        style: myTextTheme()
                                                            .overline),
                                                  ]))
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
