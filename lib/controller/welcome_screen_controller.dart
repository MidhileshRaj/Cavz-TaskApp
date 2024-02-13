import 'package:flutter/material.dart';

class WelcomeScreenController extends  ChangeNotifier{
  List<String> dataString = ["English", "Arabic"];
  String? selectedString;
  List<String>? selectedDataString;

  onSelectionDone(value){
    selectedString = value;
    notifyListeners();
  }
}