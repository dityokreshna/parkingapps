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

class Result {
  String? fullName;
  String? phoneNumber;
  String? email;
  String? address;
  String? dob;
  String? levelUser;

  Result(
      {this.fullName,
      this.phoneNumber,
      this.email,
      this.address,
      this.dob,
      this.levelUser});

  Result.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    address = json['address'];
    dob = json['dob'];
    levelUser = json['levelUser'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullName'] = this.fullName;
    data['phoneNumber'] = this.phoneNumber;
    data['email'] = this.email;
    data['address'] = this.address;
    data['dob'] = this.dob;
    data['levelUser'] = this.levelUser;
    return data;
  }
}
