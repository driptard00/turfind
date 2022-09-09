import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IndividualStateController extends GetxController {

  bool _isLoading = false;
  int _selectedIndex = 0;

  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();


  bool get isLoading => _isLoading;
  int get selectedIndex => _selectedIndex;

  TextEditingController get firstnameController => _firstnameController;
  TextEditingController get lastnameController => _lastnameController;
  TextEditingController get emailController => _emailController;


  selectedIndexItem (value){
    _selectedIndex = value;
    update();
  }



}