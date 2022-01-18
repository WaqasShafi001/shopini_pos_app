// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/style/appColors.dart';

class LargeButton extends StatelessWidget {
  final String? titleText;
  final Function()? onTap;
  const LargeButton({Key? key, this.titleText, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.06),
        child: MaterialButton(
          onPressed: onTap,
          height: height * 0.065,
          color: AppColors.blueColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          minWidth: width * 0.9,
          child: Text(
            titleText!,
            style: TextStyle(
              color: AppColors.whiteColor,
              fontFamily: 'Poppins',
              fontSize: height * 0.023,
            ),
          ),
        ),
      ),
    );
  }
}
