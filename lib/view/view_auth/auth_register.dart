import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parkingapps/models/model_auth_response.dart';
import 'package:parkingapps/models/model_base_response.dart';
import 'package:parkingapps/style/style_text.dart';
import 'package:parkingapps/view/view_home/home_screen.dart';
import 'package:parkingapps/viewmodels/viewmodels_http.dart';

import 'auth_extend/extend_widget.dart';
import 'auth_login.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = '/signup_screen';
  SignupScreen({Key? key}) : super(key: key);
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  // TextEditingController _emailController = TextEditingController();
  TextEditingController _dateOfBirthController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 45, 146, 10),
                        child: Image.asset(
                          "assets/images/logo.png",
                          width: 214,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 46, 10),
                        child: Text(
                          "Welcome to Parkeer",
                          style:
                              myTextTheme(fontWeights: FontWeight.bold).headline6,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 10, 10),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: "Before You Go, We Need to Know You! or ",
                                  style: myTextTheme().headline6),
                              TextSpan(
                                text: "Have an Account",
                                style: myTextTheme(
                                        colors: Color.fromARGB(255, 35, 83, 143),
                                        fontWeights: FontWeight.bold)
                                    .headline6,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                        context, LoginScreen.routeName);
                                  },
                              )
                            ],
                          ),
                        ),
                      ),
                      CustomForm(
                        textAtas: "Full Name",
                        keterangan: "Full Name",
                        textController: _fullNameController,
                      ),
                      // CustomForm(
                      //   textAtas: "Email",
                      //   keterangan: "Email",
                      //   textController: _emailController,
                      // ),
                      CustomForm(
                        textAtas: "Phone Number",
                        keterangan: "Phone Number",
                        textController: _phoneNumberController,
                      ),
                      CustomForm(
                        textAtas: "Address",
                        keterangan: "Address",
                        textController: _addressController,
                      ),
                      CustomForm(
                        textAtas: "Date of Birth",
                        keterangan: "Date of Birth",
                        textController: _dateOfBirthController,
                      ),
                      Container(
                        alignment: AlignmentDirectional.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, SignupExtendScreen.routeName,
                                  arguments: SignupDetailArguments(
                                      _fullNameController.text,
                                      _phoneNumberController.text,
                                      _addressController.text,
                                      _dateOfBirthController.text));
                            },
                            child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.88,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 35, 83, 143),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Let's Get In",
                                      textAlign: TextAlign.center,
                                      style: myTextTheme(
                                              colors: Colors.white,
                                              fontWeights: FontWeight.w600)
                                          .button,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_circle_right_rounded,
                                      color: Colors.white,
                                      size: 25,
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ),
        
                      // Image.asset(
                      //   "assets/images/combine2.png",
                      //   width: MediaQuery.of(context).size.width,
                      //   fit: BoxFit.cover,
                      // ),
                    ],
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     print("Button Clicked");
                  //   },
                  //   child: Container(
                  //       alignment: Alignment.center,
                  //       width: MediaQuery.of(context).size.width * 0.9,
                  //       height: 64,
                  //       decoration: BoxDecoration(
                  //         color: const Color.fromARGB(255, 35, 83, 143),
                  //         borderRadius: BorderRadius.circular(15),
                  //       ),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Text(
                  //             "Get Started",
                  //             textAlign: TextAlign.center,
                  //             style: myTextTheme(
                  //                     colors: Colors.white,
                  //                     fontWeights: FontWeight.bold)
                  //                 .button,
                  //           ),
                  //           SizedBox(
                  //             width: 10,
                  //           ),
                  //           Icon(
                  //             Icons.arrow_circle_right_rounded,
                  //             color: Colors.white,
                  //             size: 25,
                  //           )
                  //         ],
                  //       )),
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignupDetailArguments {
  final String fullName;
  final String phoneNumber;
  final String address;
  final String dateOfBirth;

  SignupDetailArguments(
      this.fullName, this.phoneNumber, this.address, this.dateOfBirth);
}

class SignupExtendScreen extends StatelessWidget {
  static const routeName = '/signupextend_screen';
  SignupExtendScreen({Key? key, required this.dataPassing}) : super(key: key);
  SignupDetailArguments dataPassing;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _repeatPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 45, 146, 10),
                      child: Image.asset(
                        "assets/images/logo.png",
                        width: 214,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 46, 10),
                      child: Text(
                        "Welcome to Parkeer",
                        style:
                            myTextTheme(fontWeights: FontWeight.bold).headline6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 10, 10),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: "Almost Done",
                                style: myTextTheme().headline6),
                          ],
                        ),
                      ),
                    ),
                    CustomForm(
                      textAtas: "Username",
                      keterangan: "Username",
                      textController: _usernameController,
                    ),
                    CustomForm(
                      textAtas: "Password",
                      keterangan: "Password",
                      textController: _passwordController,
                    ),
                    CustomForm(
                      textAtas: "Repeat Password",
                      keterangan: "Repeat Password",
                      textController: _repeatPasswordController,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Image.asset(
                          "assets/images/orang.png",
                          width: 300,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),

                    // Image.asset(
                    //   "assets/images/combine2.png",
                    //   width: MediaQuery.of(context).size.width,
                    //   fit: BoxFit.cover,
                    // ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 22),
                  alignment: AlignmentDirectional.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                    child: InkWell(
                      onTap: () async {
                        print(dataPassing.fullName);

                        ModelBaseResponse result = await MyHttp().register(
                            _usernameController.text,
                            _passwordController.text,
                            dataPassing.fullName,
                            dataPassing.phoneNumber,
                            dataPassing.address,
                            dataPassing.dateOfBirth);
                        Navigator.pushNamed(
                          context,
                          HomeScreen.routeName,
                        );
                      },
                      child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.88,
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 35, 83, 143),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Register",
                                textAlign: TextAlign.center,
                                style: myTextTheme(
                                        colors: Colors.white,
                                        fontWeights: FontWeight.w600)
                                    .button,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_circle_right_rounded,
                                color: Colors.white,
                                size: 25,
                              )
                            ],
                          )),
                    ),
                  ),
                ),
                // InkWell(
                //   onTap: () {
                //     print("Button Clicked");
                //   },
                //   child: Container(
                //       alignment: Alignment.center,
                //       width: MediaQuery.of(context).size.width * 0.9,
                //       height: 64,
                //       decoration: BoxDecoration(
                //         color: const Color.fromARGB(255, 35, 83, 143),
                //         borderRadius: BorderRadius.circular(15),
                //       ),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Text(
                //             "Get Started",
                //             textAlign: TextAlign.center,
                //             style: myTextTheme(
                //                     colors: Colors.white,
                //                     fontWeights: FontWeight.bold)
                //                 .button,
                //           ),
                //           SizedBox(
                //             width: 10,
                //           ),
                //           Icon(
                //             Icons.arrow_circle_right_rounded,
                //             color: Colors.white,
                //             size: 25,
                //           )
                //         ],
                //       )),
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
