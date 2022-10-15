import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parkingapps/models/model_auth_response.dart';
import 'package:parkingapps/style/style_text.dart';
import 'package:parkingapps/view/view_home/home_screen.dart';
import 'package:parkingapps/viewmodels/viewmodels_http.dart';

import 'auth_extend/extend_widget.dart';
import 'auth_register.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login_screen';
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                "assets/images/vector1.png",
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/vector3.png",
                height: 150,
                width: MediaQuery.of(context).size.width * 0.8,
                fit: BoxFit.fill,
              ),
            ),
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
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: "Find your ",
                                style: myTextTheme().headline6),
                            TextSpan(
                                text: "parkeer",
                                style: myTextTheme(
                                        colors:
                                            Color.fromARGB(255, 35, 83, 143),
                                        fontWeights: FontWeight.bold)
                                    .headline6),
                            TextSpan(
                                text:
                                    " place around you that you never imagine before. Let's Go!",
                                style: myTextTheme().headline6)
                          ],
                        ),
                      ),
                    ),
                    CustomForm(
                      textAtas: "Username",
                      keterangan: "Username",
                      textController: _usernameController,
                      icon: Icons.person,
                    ),
                    CustomPassForm(
                      textAtas: "Password",
                      keterangan: "Password",
                      textController: _passwordController,
                      icon: Icons.key,
          
                    ),
                    Container(
                      alignment: AlignmentDirectional.center,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                        child: InkWell(
                          onTap: () async {
                            // ModelAuthResponse result =
                            //     await MyHttp().auth(_usernameController.text, _passwordController.text);
                            // result.error == true
                            //     ? print("Sukses")
                            //     : print("gagal");
        
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
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Center(
                        child: Text.rich(
                          textAlign: TextAlign.center,
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: "New Comer?",
                                  style: myTextTheme().button),
                              TextSpan(
                                text: "\nRegister Here",
                                style: myTextTheme(
                                        colors:
                                            Color.fromARGB(255, 35, 83, 143),
                                        fontWeights: FontWeight.bold)
                                    .button,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                        context, SignupScreen.routeName);
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
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
    );
  }
}
