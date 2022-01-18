// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:rive/rive.dart';

class CustomLoadingRive extends StatelessWidget {
  const CustomLoadingRive({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainHeadingColor.withOpacity(0.1),
      body: Center(
        child: Container(
          height: height * 0.2,
          width: width * 0.5,
          color: Colors.transparent,
          child: Center(
            child: RiveAnimation.asset(
              'assets/loading.riv',
              alignment: Alignment.center,
              placeHolder: CircularProgressIndicator(),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
