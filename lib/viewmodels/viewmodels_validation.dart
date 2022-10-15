import 'dart:core';

class ValueException implements Exception {
  late String _message;

  ValueException([String message = 'Invalid value']) {
    this._message = message;
  }

  @override
  String toString() {
    return _message;
  }
}

class MyValidation {
  bool _usernameValidation(username) {
    bool usernameValid =
        RegExp(r"^(?=.{8,20}$)(?![.])(?!.*[.]{2})[a-zA-Z0-9.]+(?<![.])$")
            .hasMatch(username);
    return usernameValid;
  }

  bool _passwordValidation(password) {
    bool passwordValid = RegExp(r"^(?=.{6,12})$").hasMatch(password);
    return passwordValid;
  }

  bool _fullnameValidation(fullName) {
    bool fullnameValid = RegExp(r"^[a-zA-Z]$").hasMatch(fullName);
    return fullnameValid;
  }

  bool _phonenumberValidation(phoneNumber) {
    bool fullnameValid = RegExp(r"^[a-zA-Z]$").hasMatch(phoneNumber);
    return fullnameValid;
  }

  bool _emailValidation(email) {
    bool fullnameValid = RegExp(r"^[a-zA-Z]$").hasMatch(email);
    return fullnameValid;
  }

  bool _addressValidation(address) {
    bool fullnameValid = RegExp(r"^[a-zA-Z]$").hasMatch(address);
    return fullnameValid;
  }

  bool _dobValidation(dob) {
    bool fullnameValid = RegExp(r"^[a-zA-Z]$").hasMatch(dob);
    return fullnameValid;
  }

  bool registerValidation(String username, String password, String fullName,
      String phoneNumber, String email, String address, String dob) {
    if (username.isEmpty ||
        password.isEmpty ||
        fullName.isEmpty ||
        phoneNumber.isEmpty ||
        email.isEmpty ||
        address.isEmpty ||
        dob.isEmpty) {
      throw new ValueException("Recheck Your Form");
    } else if (_usernameValidation(username) == true) {
      throw new ValueException("Recheck Your Username");
    } else if (_passwordValidation(password)) {
      throw new ValueException("Recheck Your Password");
    } else if (_fullnameValidation(fullName)) {
      throw new ValueException("Recheck Your Fullname");
    } else if (_phonenumberValidation(phoneNumber)) {
      throw new ValueException("Recheck Your Phone Number");
    } else if (_emailValidation(email)) {
      throw new ValueException("Recheck Your Email");
    } else if (_addressValidation(address)) {
      throw new ValueException("Recheck Your Address");
    } else if (_dobValidation(dob)) {
      throw new ValueException("Recheck Your Date of Birth");
    }

    bool _isValid = true;
    return _isValid;
  }
}
