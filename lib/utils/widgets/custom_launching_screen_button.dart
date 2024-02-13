

import 'dart:ffi';

import 'package:flutter/material.dart';

import '../app_colors.dart';

class CustomLaunchinScreenButton extends StatelessWidget {
  const CustomLaunchinScreenButton({
    super.key, required this.text, required this.ontap,
  });
  final String text;
  final VoidCallback ontap;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: ontap,
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: MediaQuery.sizeOf(context).width*.85,
          decoration:BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: AppColors.buttonColor,width: 3)
          ) ,
          child: Text(text,style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
