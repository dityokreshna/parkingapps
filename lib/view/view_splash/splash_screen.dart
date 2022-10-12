import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:parkingapps/style/style_text.dart';
import 'package:parkingapps/view/view_auth/auth_login.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/splash_screen';
  const SplashScreen({Key? key}) : super(key: key);

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
              top: MediaQuery.of(context).size.height / 9,
              left: 0,
              child: Image.asset(
                "assets/images/vector2.png",
                width: 100,
                fit: BoxFit.cover,
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
                      padding: const EdgeInsets.fromLTRB(27, 0, 46, 50),
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
                                    " place around you that you never imagine before",
                                style: myTextTheme().headline6)
                          ],
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/images/combine2.png",
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 22),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 64,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 35, 83, 143),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Get Started",
                            textAlign: TextAlign.center,
                            style: myTextTheme(
                                    colors: Colors.white,
                                    fontWeights: FontWeight.bold)
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
