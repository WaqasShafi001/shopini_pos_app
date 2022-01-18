// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/style/appColors.dart';

class ContactWidget extends StatelessWidget {
  final String? titleText;
  final String? descriptionText;
  final String? imagePath;
  const ContactWidget(
      {Key? key, this.titleText, this.descriptionText, this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Container(
      height: height * 0.13,
      width: width * 0.9,
      decoration: BoxDecoration(
        color: AppColors.mainHeadingColor.withOpacity(0.3),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titleText!,
              style: TextStyle(
                  color: AppColors.mainHeadingColor,
                  fontFamily: 'Poppins',
                  fontSize: height * 0.022),
            ),
            SizedBox(height: height * 0.007),
            Row(
              children: [
                Image.asset(
                  imagePath!,
                  height: height * 0.03,
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  descriptionText!,
                  style: TextStyle(
                      color: AppColors.whiteColor,
                      fontFamily: 'Poppins',
                      fontSize: height * 0.020),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
