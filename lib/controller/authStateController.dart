import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthStateController extends GetxController{

  bool _isLoading = false;
  String _selectedIndex = "";
  bool _hidePassword = true;

  Map<dynamic, dynamic> _userInfo = {};
  final List _gender = [
    "Male",
    "Female",
    "Not Sure"
  ];
  final List<String> _location = [
    "Abuja, Nigeria",
    "Ondo, Nigeria",
    "Nasarawa, Nigeria",
    "Niger, Nigeria"
  ];

  

  // GETTERS
  bool get isLoading => _isLoading;
  Map<dynamic, dynamic> get userInfo => _userInfo;
  List<String> get location => _location;
  bool get hidePassword => _hidePassword;
  List get gender => _gender;

  //SETTERS
  updateIsLoading(bool value) {
    _isLoading = value;
    update();
  }

  selectedIndex(value) {
    _selectedIndex = value;
    update();
  }

  togglePassword() {
    _hidePassword = !_hidePassword;
    update();
  }

  updatedUserInfo(Map<dynamic, dynamic> value) {
    _userInfo = value;
    update();
  }
}