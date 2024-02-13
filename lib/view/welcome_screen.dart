import 'package:flutter/material.dart';
import 'package:flutter_custom_selector/flutter_custom_selector.dart';
import 'package:provider/provider.dart';
import 'package:task_cavz/controller/welcome_screen_controller.dart';
import 'package:task_cavz/utils/app_constants.dart';
import 'package:task_cavz/utils/themes/widget_theme.dart';
import 'package:task_cavz/view/launching_page.dart';

import '../utils/widgets/custom_button1.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =
    Provider.of<WelcomeScreenController>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery
                      .sizeOf(context)
                      .height * .3,
                ),
                const Image(
                  image: AssetImage(AppConstant.carImage),
                ),
                SizedBox(
                  width: MediaQuery
                      .sizeOf(context)
                      .width * .9,
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
                    style: TextStyle(),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20,),
                Consumer<WelcomeScreenController>(
                  builder: (BuildContext context, value, Widget? child) {
                    return CustomSingleSelectField<String>(
            
                      items: controller.dataString,
                      title: "Select Language",
                      onSelectionDone: controller.onSelectionDone,
                      itemAsString: (item) => item,
                    );
                  },
                ),
                SizedBox(
                  height: MediaQuery
                      .sizeOf(context)
                      .height * .2,
                ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: CustomButton(textData: 'GET STARTED',
                    decoration: MyAppWidgetThemes.buttonContainerTheme, onTap: () {
                         Navigator.push(
                             context, MaterialPageRoute(builder: (context) =>const LaunchingPage(),));
                       },),
                 ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
