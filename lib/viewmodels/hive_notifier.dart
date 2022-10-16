import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:parkingapps/models/model_auth_response.dart';
/// Connection status check result.
enum HiveData {
  anydata,
  none
}

class HiveNotifier extends ChangeNotifier {
  // List _deviceList = <Result>[];
  // List get resultList => _deviceList;

  addItem(String? fullName, String? phoneNumber, String? email, String? address,
      String? dob, String? levelUser, String? token) async {
    var box = await Hive.openBox<Result>('devicegroup');
    final Map<dynamic, Result> deliveriesMap = box.toMap();
    Result addItemku = Result(
        fullName: fullName,
        phoneNumber: phoneNumber,
        email: email,
        address: address,
        dob: dob,
        levelUser: levelUser,
        token: token);
    box.add(addItemku);
    notifyListeners();
  }

  getItem() async {
    var box = await Hive.openBox<Result>('devicegroup');
    bool checkbox = box.isEmpty;
    notifyListeners();
  }

  updateItem(int index, Result value) {
    final box = Hive.box<Result>('devicegroup');
    box.putAt(index, value);
    notifyListeners();
  }

  deleteItem(int index) {
    final box = Hive.box<Result>('devicegroup');
    box.deleteAt(index);
    getItem();
    notifyListeners();
  }

  // addDevice(String nama, String deskripsi, List<String> deviceList,
  //     String namaDevice) async {
  //   var box = await Hive.openBox<Result>('devicegroup');
  //   final Map<dynamic, Result> deliveriesMap = box.toMap();
  //   deviceList.add(namaDevice);
  //   Result addItemku =
  //       Result(id: nama, deskripsi: deskripsi, device: deviceList);
  //   print(addItemku.id);
  //   deliveriesMap.forEach((key, value) {
  //     print("keynya");
  //     print(key);
  //     if (value.id == addItemku.id) {
  //       box.putAt(key, addItemku);
  //     }
  //   });

  //   notifyListeners();
  // }
}
