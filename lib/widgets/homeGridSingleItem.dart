// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/style/appColors.dart';

class HomeGridOption extends StatelessWidget {
  final String? assetPath;
  final String? titleText;
  final Function()? onTap;
  const HomeGridOption({Key? key, this.assetPath, this.titleText, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        // height: height * 0.24,
        // width: width * 0.28,
        decoration: BoxDecoration(
          color: AppColors.mainHeadingColor.withOpacity(0.3),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: height * 0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(assetPath!, height: height * 0.08),
              Text(
                titleText!,
                style: TextStyle(
                  fontSize: height * 0.019,
                  fontFamily: 'Poppins',
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
