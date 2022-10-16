import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:parkingapps/models/model_auth_response.dart';
import 'package:parkingapps/style/style_text.dart';
import 'package:parkingapps/view/view_detail/detail_screen.dart';
import 'package:parkingapps/view/view_home/home_search.dart';
import 'package:parkingapps/view/view_vehicle/vehicle_add.dart';
import 'package:parkingapps/viewmodels/hive_notifier.dart';
import 'package:provider/provider.dart';

import 'view/view_auth/auth_login.dart';
import 'view/view_auth/auth_register.dart';
import 'view/view_home/home_screen.dart';
import 'view/view_splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ResultAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: Color.fromRGBO(35, 83, 143, .1),
      100: Color.fromRGBO(35, 83, 143, .2),
      200: Color.fromRGBO(35, 83, 143, .3),
      300: Color.fromRGBO(35, 83, 143, .4),
      400: Color.fromRGBO(35, 83, 143, .5),
      500: Color.fromRGBO(35, 83, 143, .6),
      600: Color.fromRGBO(35, 83, 143, .7),
      700: Color.fromRGBO(35, 83, 143, .8),
      800: Color.fromRGBO(35, 83, 143, .9),
      900: Color.fromRGBO(35, 83, 143, 1),
    };
    return MultiProvider(
      providers: [
        StreamProvider<ConnectivityResult>.value(
            value: Connectivity().onConnectivityChanged,
            initialData: ConnectivityResult.none),
        // StreamProvider<HiveNotifier>.value(
        //     value: HiveNotifier().getItem(),
        //     initialData: HiveData.none),
        // ChangeNotifierProvider(
        //   create: (context) => HiveNotifier(),
        // ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: MaterialColor(0x23538F,color),
          primaryColor: Color.fromARGB(255, 35, 83, 143),
        ),
        initialRoute: SignupScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => SplashScreen(),
          LoginScreen.routeName: (context) => LoginScreen(),
          SignupScreen.routeName: (context) => SignupScreen(),
          SignupExtendScreen.routeName: (context) => SignupExtendScreen(
                dataPassing: ModalRoute.of(context)?.settings.arguments
                    as SignupDetailArguments,
              ),
          HomeScreen.routeName: (context) => HomeScreen(),
          VehicleAdd.routeName: (context) => VehicleAdd(),
          HomeSearchResult.routeName: (context) => HomeSearchResult(),
          DetailScreen.routeName: (context) => DetailScreen(),
        },
      ),
    );
  }
}
