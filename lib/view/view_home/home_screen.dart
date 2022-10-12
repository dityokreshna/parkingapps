import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:parkingapps/style/style_text.dart';
import 'package:parkingapps/view/view_auth/auth_login.dart';
import 'package:parkingapps/view/view_history/history_screen.dart';
import 'package:parkingapps/view/view_home/home_menu.dart';
import 'package:parkingapps/view/view_profile/profile_screen.dart';
import 'package:parkingapps/view/view_vehicle/vehicle_menu.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            backgroundColor: Colors.white,
            selectedItemColor: Color.fromARGB(255, 35, 83, 143),
            unselectedIconTheme: IconThemeData(
              color: Colors.grey,
            ),
            unselectedItemColor: Colors.grey,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.directions_car_filled_rounded),
                label: 'Vehicle',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.checklist_rounded),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded),
                label: 'Profile',
              ),
            ],
          ),
        ),
        body: _selectedIndex == 0
            ? HomeMenu()
            : _selectedIndex == 1
                ? VehicleMenu()
                : _selectedIndex == 2
                    ? HistoryMenu()
                    : ProfileMenu(),
      ),
    );
  }
}
