import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:parkingapps/style/style_text.dart';

class CustomForm extends StatelessWidget {
  CustomForm(
      {Key? key,
      required this.textAtas,
      required this.keterangan,
      required this.textController,
      required this.icon})
      : super(key: key);
  String textAtas;
  String keterangan;
  TextEditingController textController;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 20, 10),
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
            controller: textController,
            // validator:
            //     ValidationBuilder().email().maxLength(50).build(),
            decoration: InputDecoration(
              prefixIconColor: Color.fromARGB(255, 35, 83, 143),
              hoverColor: Color.fromARGB(255, 35, 83, 143),
              // iconColor: Color.fromARGB(255, 35, 83, 143),
              focusColor: Color.fromARGB(255, 35, 83, 143),
              // labelText: 'Email',
              hintText: 'Input ' + keterangan,
              prefixIcon: Icon(
                icon,
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
              contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 20.0, 15.0),
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
    );
  }
}

class CustomPassForm extends StatefulWidget {
  CustomPassForm(
      {Key? key,
      required this.textAtas,
      required this.keterangan,
      required this.textController,
      required this.icon})
      : super(key: key);
  String textAtas;
  String keterangan;
  TextEditingController textController;
  IconData icon;

  @override
  State<CustomPassForm> createState() => _CustomPassFormState();
}

class _CustomPassFormState extends State<CustomPassForm> {
  bool _isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.textAtas,
            style: myTextTheme(
                    colors: Color.fromARGB(255, 35, 83, 143),
                    fontWeights: FontWeight.bold)
                .subtitle1,
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            obscureText: _isObsecure,
            controller: widget.textController,
            // validator:
            //     ValidationBuilder().email().maxLength(50).build(),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      if (_isObsecure) {
                        _isObsecure = false;
                      } else {
                        _isObsecure = true;
                      }
                    });
                  },
                  icon: Icon(
                    _isObsecure ? Icons.visibility : Icons.visibility_off,
                    color: Color.fromARGB(255, 35, 83, 143),
                  )),

              prefixIconColor: Color.fromARGB(255, 35, 83, 143),
              hoverColor: Color.fromARGB(255, 35, 83, 143),
              // iconColor: Color.fromARGB(255, 35, 83, 143),
              focusColor: Color.fromARGB(255, 35, 83, 143),
              // labelText: 'Email',
              hintText: 'Input ' + widget.keterangan,
              prefixIcon: Icon(
                widget.icon,
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
              contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 20.0, 15.0),
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
    );
  }
}

class DateofBirthForm extends StatelessWidget {
  DateofBirthForm(
      {Key? key,
      required this.textAtas,
      required this.keterangan,
      required this.textController,
      required this.icon})
      : super(key: key);
  String textAtas;
  String keterangan;
  TextEditingController textController;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 20, 10),
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
            controller: textController,
            // validator:
            //     ValidationBuilder().email().maxLength(50).build(),
            decoration: InputDecoration(
              suffixIcon: IconButton(color: Color.fromARGB(255, 35, 83, 143),
                icon: Icon(Icons.arrow_drop_down_circle),
                onPressed: () async {
                  DateTime? pickedDate = await showDatePicker(
                      initialEntryMode: DatePickerEntryMode.calendarOnly,
                      context: context,
                      initialDate: DateTime.now(), //get today's date
                      firstDate: DateTime(
                          1970), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime.now(),
                      builder: (context, child) {
                        return Theme(
                          data: ThemeData.dark().copyWith(
                            colorScheme: ColorScheme.dark(
                              primary: Color.fromARGB(255, 0, 25, 56),
                              onPrimary: Colors.white,
                              surface: Color.fromARGB(255, 35, 83, 143),
                              onSurface: Colors.white,
                            ),
                            dialogBackgroundColor: Color.fromARGB(255, 35, 83, 143),
                            // textButtonTheme: TextButtonThemeData(
                            //   style: TextButton.styleFrom(
                            //     primary: Colors.white, // button text color
                            //   ),
                            // ),
                          ),
                          child: child!,
                        );
                      });

                  if (pickedDate != null) {
                    print(
                        pickedDate); //get the picked date in the format => 2022-07-04 00:00:00.000
                    String formattedDate = DateFormat('yyyy-MM-dd').format(
                        pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                    print(
                        formattedDate); //formatted date output using intl package =>  2022-07-04
                    //You can format date as per your need

                    textController.text =
                        formattedDate; //set foratted date to TextField value.

                  } else {
                    print("Date is not selected");
                  }
                },
              ),
              prefixIconColor: Color.fromARGB(255, 35, 83, 143),
              hoverColor: Color.fromARGB(255, 35, 83, 143),
              // iconColor: Color.fromARGB(255, 35, 83, 143),
              focusColor: Color.fromARGB(255, 35, 83, 143),
              // labelText: 'Email',
              hintText: 'Input ' + keterangan,
              prefixIcon: Icon(
                icon,
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
              contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 20.0, 15.0),
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
    );
  }
}
