import 'package:flutter/material.dart';
import 'package:parkingapps/style/style_text.dart';
import 'package:parkingapps/view/view_profile/profile_extend/extend_widget.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
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
                  Icons.edit,
                  color: Color.fromARGB(255, 35, 83, 143),
                ))
          ],
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Profile",
            style: myTextTheme(
              fontWeights: FontWeight.w600,
              colors: Color.fromARGB(255, 35, 83, 143),
            ).headline4,
          )),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Center(
                  child: Container(
                    width: 120,
                    height: 120,
                    // margin: EdgeInsets.all(100.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 35, 83, 143),
                        shape: BoxShape.circle),
                    child: Text(
                      "P",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 96,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Text(
                "Welcome, Fullname",
                style: myTextTheme(fontWeights: FontWeight.w600).headline6,
              ),
              Text(
                "Take Control to Your Account\nHere's Your Account Info",
                style: myTextTheme(fontWeights: FontWeight.w400).headline6,
              ),
              CustomForm(
                textAtas: "Email",
                keterangan: "email@parkeer.com",
                padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
              ),
              CustomForm(
                textAtas: "Phone Number",
                keterangan: "+628-213-2123",
                padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
              ),
              CustomForm(
                textAtas: "Address",
                keterangan: "Jl. Semarang No.5",
                padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
              ),
              CustomForm(
                textAtas: "Date of Birth",
                keterangan: "2000 - 06 - 05",
                padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
