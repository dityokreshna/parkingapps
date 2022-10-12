
import 'package:flutter/material.dart';
import 'package:parkingapps/style/style_text.dart';

class HistoryMenu extends StatelessWidget {
  const HistoryMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.filter_list,
                    color: Color.fromARGB(255, 35, 83, 143),
                  ))
            ],
            centerTitle: false,
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              "Parking History",
              style: myTextTheme(
                fontWeights: FontWeight.w600,
                colors: Color.fromARGB(255, 35, 83, 143),
              ).headline4,
            )),
            body: Padding(
        padding: const EdgeInsets.fromLTRB(20,0,28,0),
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
      );
  }
}