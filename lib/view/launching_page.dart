import 'package:flutter/material.dart';
import 'package:task_cavz/utils/app_colors.dart';
import 'package:task_cavz/utils/app_constants.dart';
import 'package:task_cavz/view/create_account.dart';

import '../utils/widgets/custom_launching_screen_button.dart';

class LaunchingPage extends StatelessWidget {
  const LaunchingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ColorFiltered(
              colorFilter:
              const ColorFilter.mode(Colors.grey, BlendMode.saturation),
              child: Container(
                height: MediaQuery
                    .sizeOf(context)
                    .height,
                width: MediaQuery
                    .sizeOf(context)
                    .width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AppConstant.mainBackground),
                        fit: BoxFit.fill)),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Image(
                    image: AssetImage(AppConstant.companyLogo),
                  ),
                  // ignore: prefer_const_constructors
                  Text("Company Name",
                    style: TextStyle(fontSize: 25, color: Colors.white),),
                  const SizedBox(height: 50,),
                  CustomLaunchinScreenButton(
                    text: 'Continue with Phone number', ontap: () {},),
                  CustomLaunchinScreenButton(
                    text: 'Login with Google', ontap: () {},),
                  CustomLaunchinScreenButton(
                    text: 'Create an account', ontap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) =>  CreateAccount(),));
                  },),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Terms & Conditions, Privacy & policy",
                      style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 15),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}