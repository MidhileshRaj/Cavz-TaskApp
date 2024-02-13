import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_cavz/controller/splash_screen_coontroller.dart';
import 'package:task_cavz/utils/app_constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);
   Provider.of<SplashProvider>(context).startSplashScreen(navigator);

    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(AppConstant.companyLogo),),
            Text("Company Name",)
          ],
        ),
      ),
    );
  }
}
