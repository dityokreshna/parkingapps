import 'package:flutter/material.dart';
import 'package:parkingapps/style/style_text.dart';

class CustomForm extends StatelessWidget {
  CustomForm(
      {required this.textAtas,
      required this.keterangan,
      this.mySize = 1,
      this.padding = const EdgeInsets.fromLTRB(30, 0, 20, 10)
      });
  EdgeInsets padding;
  double mySize;
  String textAtas;
  String keterangan;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*mySize,
      child: Padding(
        padding:padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textAtas,
              style: myTextTheme(
                      colors: Color.fromARGB(255, 35, 83, 143),
                      fontWeights: FontWeight.bold)
                  .subtitle1,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              // controller: _emailController,
              // validator:
              //     ValidationBuilder().email().maxLength(50).build(),
              decoration: InputDecoration(
                prefixIconColor: Color.fromARGB(255, 35, 83, 143),
                hoverColor: Color.fromARGB(255, 35, 83, 143),
                // iconColor: Color.fromARGB(255, 35, 83, 143),
                focusColor: Color.fromARGB(255, 35, 83, 143),
                // labelText: 'Email',
                hintText: keterangan,
                prefixIcon: Icon(
                  Icons.edit,
                  color: Color.fromARGB(255, 35, 83, 143),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 35, 83, 143),
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 35, 83, 143),
                    width: 2.0,
                  ),
                ),
                contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 0, 15.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 35, 83, 143),
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
