// import 'package:flutter/cupertino.dart';
// import 'package:hive/hive.dart';
// import 'package:si_tani_apps/models/groupdevice.dart';

// class HiveNotifier extends ChangeNotifier {
//   List _deviceList = <GroupDevice>[];
//   List get resultList => _deviceList;

//   addItem(String nama, String deskripsi) async {
//     var box = await Hive.openBox<GroupDevice>('devicegroup');
//     final Map<dynamic, GroupDevice> deliveriesMap = box.toMap();
//     GroupDevice addItemku =
//         GroupDevice(id: nama, deskripsi: deskripsi, device: []);
//     print(addItemku.id);
//     bool idItem = true;
//     deliveriesMap.forEach((key, value) {
//       print("keynya");
//       print(key);
//       if (value.id == addItemku.id) {
//         idItem = false;
//       }
//     });
//     if (idItem) {
//       box.add(addItemku);
//     }

//     notifyListeners();
//   }

//   getItem() async {
//     var box = await Hive.openBox<GroupDevice>('devicegroup');
//     _deviceList = box.values.toList();
//     notifyListeners();
//   }

//   updateItem(int index, GroupDevice value) {
//     final box = Hive.box<GroupDevice>('devicegroup');
//     box.putAt(index, value);
//     notifyListeners();
//   }

//   deleteItem(int index) {
//     final box = Hive.box<GroupDevice>('devicegroup');
//     box.deleteAt(index);
//     getItem();
//     notifyListeners();
//   }

//   addDevice(String nama, String deskripsi, List<String> deviceList,
//       String namaDevice) async {
//     var box = await Hive.openBox<GroupDevice>('devicegroup');
//     final Map<dynamic, GroupDevice> deliveriesMap = box.toMap();
//     deviceList.add(namaDevice);
//     GroupDevice addItemku =
//         GroupDevice(id: nama, deskripsi: deskripsi, device: deviceList);
//     print(addItemku.id);
//     deliveriesMap.forEach((key, value) {
//       print("keynya");
//       print(key);
//       if (value.id == addItemku.id) {
//         box.putAt(key, addItemku);
//       }
//     });

//     notifyListeners();
//   }
// }
