class ModelBaseResponse {
  String? result;
  String? status;
  bool? error;
  int? response;

  ModelBaseResponse({this.result, this.status, this.error, this.response});

  ModelBaseResponse.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    status = json['status'];
    error = json['error'];
    response = json['response'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['status'] = this.status;
    data['error'] = this.error;
    data['response'] = this.response;
    return data;
  }
}
