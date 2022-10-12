import 'package:flutter/material.dart';
import 'package:parkingapps/style/style_text.dart';
import 'package:parkingapps/view/view_detail/detail_screen.dart';
import 'package:parkingapps/view/view_home/home_search.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.black,
              Color.fromARGB(255, 35, 83, 143),
            ],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 45, 146, 10),
                child: Image.asset(
                  "assets/images/logo2.png",
                  width: 214,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(27, 0, 46, 10),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: "Let's find a",
                          style: myTextTheme(
                            colors: Colors.white,
                            fontWeights: FontWeight.w600,
                          ).headline5),
                      TextSpan(
                          text: "\nPlace for You",
                          style: myTextTheme(
                                  colors: Colors.white,
                                  fontWeights: FontWeight.w600)
                              .headline5)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(27, 0, 46, 25),
                child: Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        isCollapsed: true,
                        prefixIcon: Icon(
                          Icons.location_on_rounded,
                          color: Color.fromARGB(255, 35, 83, 143),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, HomeSearchResult.routeName);
                          },
                          icon: Icon(Icons.search_rounded),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(27, 20, 46, 10),
                  child: Text(
                    "Near by You",
                    style: myTextTheme(
                      fontWeights: FontWeight.w600,
                    ).headline5,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 210,
                  padding: const EdgeInsets.fromLTRB(27, 0, 0, 0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, DetailScreen.routeName);
                        },
                        child: Container(
                          height: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/images/mapsdefault.png",
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                  width: 127,
                                  // height: 30,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 0, 4, 0),
                                    child: Text(
                                      "Gracak Parking",
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: myTextTheme(
                                              fontWeights: FontWeight.bold)
                                          .subtitle1,
                                    ),
                                  )),
                              Container(
                                  width: 127,
                                  // height: 30,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 0, 4, 0),
                                    child: Text(
                                      "Jl. Cakrawala",
                                      softWrap: false,
                                      overflow: TextOverflow.fade,
                                      style: myTextTheme().subtitle1,
                                    ),
                                  )),
                              Container(
                                  width: 150,
                                  // height: 30,
                                  child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(4, 0, 4, 0),
                                      child: Text.rich(
                                          softWrap: false,
                                          overflow: TextOverflow.fade,
                                          TextSpan(children: [
                                            TextSpan(
                                                text: "Open",
                                                style: myTextTheme(
                                                  colors: Colors.green,
                                                  fontWeights: FontWeight.bold,
                                                ).overline),
                                            TextSpan(
                                                text: " 08:00 - 22:00",
                                                style: myTextTheme(
                                                        fontWeights:
                                                            FontWeight.w600)
                                                    .overline)
                                          ])))),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(27, 20, 46, 10),
                  child: Text("Parking History",
                      style: myTextTheme(
                        fontWeights: FontWeight.w600,
                      ).headline5),
                ),
                // Container(
                // height: MediaQuery.of(context).size.height*0.9,
                // child:
                Flexible(
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
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 16, 0),
                                      child: Image.asset(
                                        "assets/images/car2.png",
                                        width: 72,
                                        height: 72,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
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
                                          Text(
                                            "04 Oktober 2022",
                                            style: myTextTheme().overline,
                                          ),
                                          Text(
                                            "Rp. 10.000,-",
                                            style: myTextTheme(
                                                    fontWeights:
                                                        FontWeight.bold,
                                                    colors: Colors.green)
                                                .overline,
                                          ),
                                        ],
                                      ),
                                    )
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
        ),
      ],
    );
  }
}
