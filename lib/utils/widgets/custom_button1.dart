
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.textData, required this.decoration, required this.onTap,
  });

  final String textData;
  final BoxDecoration decoration;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.sizeOf(context).height*.05,
        width: MediaQuery
            .sizeOf(context)
            .width * .9,
        decoration: decoration,
        child: Text(
          textData,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
