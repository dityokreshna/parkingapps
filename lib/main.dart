import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:parkingapps/style/style_text.dart';
import 'package:parkingapps/view/view_detail/detail_screen.dart';
import 'package:parkingapps/view/view_home/home_search.dart';
import 'package:parkingapps/view/view_vehicle/vehicle_add.dart';
import 'package:provider/provider.dart';

import 'view/view_auth/auth_login.dart';
import 'view/view_auth/auth_register.dart';
import 'view/view_home/home_screen.dart';
import 'view/view_splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  // Hive.registerAdapter(GroupDeviceAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<ConnectivityResult>.value(
            value: Connectivity().onConnectivityChanged,
            initialData: ConnectivityResult.none),
        // ChangeNotifierProvider(
        //   create: (context) => HiveNotifier(),
        // ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.green,
        ),
        initialRoute: SplashScreen.routeName,
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
