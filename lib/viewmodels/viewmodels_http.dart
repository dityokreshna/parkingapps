import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:parkingapps/models/model_auth_response.dart';
import 'package:parkingapps/models/model_base_response.dart';

class MyHttp {
  var url = Uri.https('parking.mammiri.id', '/api/v1/auth');
  var urlreg = Uri.https('parking.mammiri.id', '/api/v1/register');
  Future<ModelAuthResponse> auth(String username, String password) async {
    var response = await http
        .post(url, body: {'username': username, 'password': password});

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    ModelAuthResponse result =
        ModelAuthResponse.fromJson(json.decode(response.body));
    print(result.result?.fullName);
    return result;
  }

  Future<ModelBaseResponse> register(
      String username,
      String password,
      String fullName,
      String phoneNumber,
      String email,
      String address,
      String dob,
      ) async {

    var response = await http.post(urlreg, body: {
      'username': username,
      'fullName': fullName,
      'password': password,
      'email': email,
      'phoneNumber': phoneNumber,
      'address': address,
      'dob': dob
    });

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    ModelBaseResponse result =
        ModelBaseResponse.fromJson(json.decode(response.body));
    print(result.result);
    return result;
  }
}
