import 'package:flutter/cupertino.dart';

import '../app_colors.dart';

class MyAppWidgetThemes {
  static const BoxDecoration buttonContainerTheme = BoxDecoration(
      color: AppColors.buttonColor,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30)));
}
