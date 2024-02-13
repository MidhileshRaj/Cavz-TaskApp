import 'package:flutter/material.dart';
import 'package:task_cavz/view/welcome_screen.dart';

class SplashProvider extends ChangeNotifier {

  startSplashScreen(NavigatorState navigatorState) async {
    Future.delayed(const Duration(seconds: 3), () {
      navigatorState.pushReplacement(
          MaterialPageRoute(
            builder: (context) =>  const WelcomeScreen(),
          ));
    });
  }


}
