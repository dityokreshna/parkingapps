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
  //clear
  bool _usernameValidation(username) {
    bool usernameValid =
        RegExp(r'^[a-zA-Z0-9]+$').hasMatch(username);
    return usernameValid;
  }

  //clear
  bool _passwordValidation(password) {
    bool passwordValid = RegExp(r'^\S{6,12}$').hasMatch(password);
    return passwordValid;
  }

  //
  bool _fullnameValidation(fullName) {
    bool fullnameValid =
        RegExp(r'^[a-zA-Z ]+$').hasMatch(fullName);
    return fullnameValid;
  }

  bool _phonenumberValidation(phoneNumber) {
    bool fullnameValid = RegExp(
            r'^(0|\+|(\+[0-9]{2,4}|\(\+?[0-9]{2,4}\)) ?)([0-9]*|\d{2,4}-\d{2,4}(-\d{2,4})?)$')
        .hasMatch(phoneNumber);
    return fullnameValid;
  }

  bool _emailValidation(email) {
    bool fullnameValid = RegExp(
            r'^[a-z0-9]+([-+._][a-z0-9]+){0,2}@.*?(\.(a(?:[cdefgilmnoqrstuwxz]|ero|(?:rp|si)a)|b(?:[abdefghijmnorstvwyz]iz)|c(?:[acdfghiklmnoruvxyz]|at|o(?:m|op))|d[ejkmoz]|e(?:[ceghrstu]|du)|f[ijkmor]|g(?:[abdefghilmnpqrstuwy]|ov)|h[kmnrtu]|i(?:[delmnoqrst]|n(?:fo|t))|j(?:[emop]|obs)|k[eghimnprwyz]|l[abcikrstuvy]|m(?:[acdeghklmnopqrstuvwxyz]|il|obi|useum)|n(?:[acefgilopruz]|ame|et)|o(?:m|rg)|p(?:[aefghklmnrstwy]|ro)|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|t(?:[cdfghjklmnoprtvwz]|(?:rav)?el)|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw])\b){1,2}$')
        .hasMatch(email);
    return fullnameValid;
  }

  bool _addressValidation(address) {
    // bool fullnameValid = RegExp(r"^[a-zA-Z]$").hasMatch(address);
    return true;
  }

  bool _dobValidation(dob) {
    bool fullnameValid = RegExp(r'^\d{4}-\d{2}-\d{2}Z?$').hasMatch(dob);
    return fullnameValid;
  }

  bool registerValidation(
      String username,
      String password,
      String fullName,
      String phoneNumber,
      String email,
      String address,
      String dob,
      String repeatPassword) {
    if (username.isEmpty ||
        password.isEmpty ||
        fullName.isEmpty ||
        phoneNumber.isEmpty ||
        email.isEmpty ||
        address.isEmpty ||
        dob.isEmpty ||
        repeatPassword.isEmpty) {
      throw new ValueException("Recheck Your Form");
    } else if (_usernameValidation(username) == false) {
      throw new ValueException("Recheck Your Username");
    } else if (_passwordValidation(password) == false) {
      throw new ValueException("Recheck Your Password");
    } else if (password != repeatPassword) {
      throw new ValueException("Recheck Your Re-Password");
    } else if (_fullnameValidation(fullName) == false) {
      throw new ValueException("Recheck Your Fullname");
    } else if (_phonenumberValidation(phoneNumber) == false) {
      throw new ValueException("Recheck Your Phone Number");
    } else if (_emailValidation(email) == false) {
      throw new ValueException("Recheck Your Email");
    } else if (_addressValidation(address) == false) {
      throw new ValueException("Recheck Your Address");
    } else if (_dobValidation(dob) == false) {
      throw new ValueException("Recheck Your Date of Birth");
    }

    bool _isFinished = true;
    return _isFinished;
  }

  bool loginValidation(String username,String password){
    if (username.isEmpty ||
        password.isEmpty) {
      throw new ValueException("Recheck Your Form");
    } else if (_usernameValidation(username) == false) {
      throw new ValueException("Recheck Your Username");
    } else if (_passwordValidation(password) == false) {
      throw new ValueException("Recheck Your Password");
    }

    bool _isFinished = true;
    return _isFinished;
  }
}
