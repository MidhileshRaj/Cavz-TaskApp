import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:task_cavz/utils/app_constants.dart';

import '../view/home_page.dart';

class CreateAccountController extends ChangeNotifier {
  List<bool> _obscureTextList = [];
  bool termNcondition = false;
  bool marketingandpromo = false;

  void toggleObscure(int index) {
    _obscureTextList[index] = !_obscureTextList[index];
    notifyListeners();
  }

  bool isObscure(int index) {
    return _obscureTextList[index];
  }

  // Initialize obscureTextList based on the number of text fields
  void initObscureTextList(int count) {
    _obscureTextList = List<bool>.filled(count, true);
  }

  void chechTermsAndCondition(value) {
    termNcondition = !termNcondition;
    notifyListeners();
  }

  void chechMArketingAction(value) {
    marketingandpromo = !marketingandpromo;
    notifyListeners();
  }

  registration(BuildContext context,
      {required email, required password}) async {
    try {
      if (termNcondition) {
        final ref = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
          if(!context.mounted) return;
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ));

      } else {}
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.code);
    }
    return null;
  }
}
