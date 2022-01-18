// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/style/appColors.dart';

customSnackbar({String? title, String? messageText}) {
  Get.snackbar(
    '$title', '$messageText',
    backgroundColor: AppColors.mainHeadingColor.withOpacity(0.25),
    titleText: Text(
      '$title',
      style: TextStyle(
        color: AppColors.mainHeadingColor,
        fontSize: 18,
        fontFamily: 'Poppins',
      ),
    ),
    messageText: Text(
      '$messageText',
      style: TextStyle(
        color: AppColors.whiteColor,
        fontFamily: 'Poppins',
      ),
    ),
    // onTap: (snack) {
    //   print('snackkk $snack');
    // },
  );
}
