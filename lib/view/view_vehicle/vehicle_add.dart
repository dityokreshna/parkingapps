import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getwidget/getwidget.dart';
import 'package:parkingapps/style/style_text.dart';
import 'package:parkingapps/view/view_vehicle/vehicle_extend/extend_widget.dart';

class VehicleAdd extends StatefulWidget {
  static const routeName = '/vehicle_add';
  const VehicleAdd({Key? key}) : super(key: key);

  @override
  State<VehicleAdd> createState() => _VehicleAddState();
}

class _VehicleAddState extends State<VehicleAdd> {
  int groupValue = 1;
  int groupValue2 = 1;
  int groupValue3 = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromARGB(255, 35, 83, 143),
                )),
            centerTitle: false,
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              "Vehicle",
              style: myTextTheme(
                fontWeights: FontWeight.w600,
                colors: Color.fromARGB(255, 35, 83, 143),
              ).headline4,
            )),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                  child: InkWell(
                    onTap: () {
                      print("Button Clicked");
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 22),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.88,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 35, 83, 143),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        "Add Vehicle",
                        textAlign: TextAlign.center,
                        style: myTextTheme(
                                colors: Colors.white,
                                fontWeights: FontWeight.w600)
                            .button,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  CustomForm(
                      textAtas: "Owner Name", keterangan: "Fill The Blank"),
                  CustomForm(
                      textAtas: "Machine Number", keterangan: "Fill The Blank"),
                  CustomForm(
                      textAtas: "Chasis Number", keterangan: "Fill The Blank"),
                  Row(
                    children: [
                      CustomForm(
                        textAtas: "Vehicle Brand",
                        keterangan: "  ",
                        mySize: 0.5,
                        padding: EdgeInsets.fromLTRB(30, 0, 3, 20),
                      ),
                      CustomForm(
                        textAtas: "Vehicle Model",
                        keterangan: "  ",
                        mySize: 0.5,
                        padding: EdgeInsets.fromLTRB(3, 0, 20, 20),
                      ),
                      // CustomForm(textAtas: "textAtas", keterangan: " ")
                    ],
                  ),
                  Row(
                    children: [
                      CustomForm(
                        textAtas: "Vehicle Color",
                        keterangan: "  ",
                        mySize: 0.5,
                        padding: EdgeInsets.fromLTRB(30, 0, 6, 30),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Status",
                            style: myTextTheme(
                                    colors: Color.fromARGB(255, 35, 83, 143),
                                    fontWeights: FontWeight.bold)
                                .subtitle1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          radioButton1(1, "Owner"),
                          SizedBox(
                            height: 4,
                          ),
                          radioButton1(2, "Borrower"),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 20, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Vehicle Type",
                              style: myTextTheme(
                                      colors: Color.fromARGB(255, 35, 83, 143),
                                      fontWeights: FontWeight.bold)
                                  .subtitle1,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 72,
                                  width: 72,
                                  child: GFRadio(
                                    type: GFRadioType.custom,
                                    activeIcon:
                                        Image.asset("assets/images/car2.png"),
                                    inactiveIcon:
                                        Image.asset("assets/images/car2.png"),
                                    radioColor: Colors.red,
                                    size: GFSize.LARGE,
                                    inactiveBorderColor: GFColors.WHITE,
                                    activeBorderColor:
                                        Color.fromARGB(255, 35, 83, 143),
                                    value: 1,
                                    groupValue: groupValue2,
                                    onChanged: (value) {
                                      setState(() {
                                        groupValue2 = value as int;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  height: 72,
                                  width: 72,
                                  child: GFRadio(
                                    type: GFRadioType.custom,
                                    activeIcon: Image.asset(
                                        "assets/images/motorcycle.png"),
                                    inactiveIcon: Image.asset(
                                        "assets/images/motorcycle.png"),
                                    radioColor: Colors.red,
                                    size: GFSize.LARGE,
                                    inactiveBorderColor: GFColors.WHITE,
                                    activeBorderColor:
                                        Color.fromARGB(255, 35, 83, 143),
                                    value: 2,
                                    groupValue: groupValue2,
                                    onChanged: (value) {
                                      setState(() {
                                        groupValue2 = value as int;
                                      });
                                    },
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Transmission",
                            style: myTextTheme(
                                    colors: Color.fromARGB(255, 35, 83, 143),
                                    fontWeights: FontWeight.bold)
                                .subtitle1,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 72,
                                width: 72,
                                child: GFRadio(
                                  type: GFRadioType.custom,
                                  activeIcon: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "A",
                                          style: myTextTheme(
                                                  fontWeights: FontWeight.bold,
                                                  colors: Colors.white)
                                              .headline4,
                                        ),
                                        Text(
                                          "Automatic",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ]),
                                  inactiveIcon: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "A",
                                          style: myTextTheme(
                                                  fontWeights: FontWeight.bold,
                                                  colors: Colors.grey)
                                              .headline4,
                                        ),
                                        Text(
                                          "Automatic",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ]),
                                  radioColor: Colors.red,
                                  size: GFSize.LARGE,
                                  inactiveBorderColor: Colors.grey,
                                  activeBorderColor:
                                      Color.fromARGB(255, 35, 83, 143),
                                  activeBgColor:
                                      Color.fromARGB(255, 35, 83, 143),
                                  value: 1,
                                  groupValue: groupValue3,
                                  onChanged: (value) {
                                    setState(() {
                                      groupValue3 = value as int;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 72,
                                width: 72,
                                child: GFRadio(
                                  type: GFRadioType.custom,
                                  activeIcon: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "M",
                                          style: myTextTheme(
                                                  fontWeights: FontWeight.bold,
                                                  colors: Colors.white)
                                              .headline4,
                                        ),
                                        Text(
                                          "Manual",
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ]),
                                  inactiveIcon: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "M",
                                          style: myTextTheme(
                                                  fontWeights: FontWeight.bold,
                                                  colors: Colors.grey)
                                              .headline4,
                                        ),
                                        Text(
                                          "Manual",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ]),
                                  radioColor: Colors.red,
                                  size: GFSize.LARGE,
                                  inactiveBorderColor: Colors.grey,
                                  activeBorderColor:
                                      Color.fromARGB(255, 35, 83, 143),
                                  activeBgColor:
                                      Color.fromARGB(255, 35, 83, 143),
                                  value: 2,
                                  groupValue: groupValue3,
                                  onChanged: (value) {
                                    setState(() {
                                      groupValue3 = value as int;
                                    });
                                  },
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container radioButton1(int nilai, String keterangan) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GFRadio(
            size: GFSize.SMALL,
            value: nilai,
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value as int;
              });
            },
            inactiveIcon: null,
            inactiveBorderColor: Color.fromARGB(255, 35, 83, 143),
            activeBorderColor: Color.fromARGB(255, 35, 83, 143),
            radioColor: Color.fromARGB(255, 35, 83, 143),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 9),
            child: Text(
              textAlign: TextAlign.left,
              keterangan,
              style: myTextTheme(
                      colors: Color.fromARGB(255, 35, 83, 143),
                      fontWeights: FontWeight.w600)
                  .subtitle1,
            ),
          )
        ],
      ),
    );
  }
}
