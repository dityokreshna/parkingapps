import 'package:hive/hive.dart';
part 'model_auth_response.g.dart';

class ModelAuthResponse {
  Result? result;
  String? status;
  bool? error;
  int? response;

  ModelAuthResponse({this.result, this.status, this.error, this.response});

  ModelAuthResponse.fromJson(Map<String, dynamic> json) {
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
    status = json['status'];
    error = json['error'];
    response = json['response'];
  }

  Map<String, dynamic> toJson(String body) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    data['status'] = this.status;
    data['error'] = this.error;
    data['response'] = this.response;
    return data;
  }
}

@HiveType(typeId: 0)
class Result extends HiveObject {
  @HiveField(0)
  String? fullName;
  @HiveField(1)
  String? phoneNumber;
  @HiveField(2)
  String? email;
  @HiveField(3)
  String? address;
  @HiveField(4)
  String? dob;
  @HiveField(5)
  String? levelUser;
  @HiveField(6)
  String? token;

  Result(
      {this.fullName,
      this.phoneNumber,
      this.email,
      this.address,
      this.dob,
      this.levelUser,
      this.token});

  Result.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    address = json['address'];
    dob = json['dob'];
    levelUser = json['levelUser'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullName'] = this.fullName;
    data['phoneNumber'] = this.phoneNumber;
    data['email'] = this.email;
    data['address'] = this.address;
    data['dob'] = this.dob;
    data['levelUser'] = this.levelUser;
    data['token'] = this.token;
    return data;
  }
}

// @HiveType(typeId: 0)
// class ResultHive extends HiveObject {
//   @HiveField(0)
//   String? fullName;
//   @HiveField(1)
//   String? phoneNumber;
//   @HiveField(2)
//   String? email;
//   @HiveField(3)
//   String? address;
//   @HiveField(4)
//   String? dob;
//   @HiveField(5)
//   String? levelUser;
//   @HiveField(6)
//   String? token;

//   ResultHive(
//       {this.fullName,
//       this.phoneNumber,
//       this.email,
//       this.address,
//       this.dob,
//       this.levelUser,
//       this.token});
// }
