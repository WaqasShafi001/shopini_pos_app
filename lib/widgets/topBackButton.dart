// ignore_for_file: prefer_const_constructors, file_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shopini_pos/style/appColors.dart';

import '../main.dart';

class TopBackButton extends StatelessWidget {
  const TopBackButton({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.05,
      width: width,
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(
            left: findLanguageController.isEnglishLocale.value
                ? width * 0.02
                : 0.0,
            right: !findLanguageController.isEnglishLocale.value
                ? width * 0.02
                : 0.0,
            top: height * 0.01),
        child: Align(
          alignment: findLanguageController.isEnglishLocale.value
              ? Alignment.topLeft
              : Alignment.topRight,
          child: Platform.localeName.contains('ar')
              ? InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: AppColors.whiteColor,
                  ),
                )
              : Platform.localeName.contains('en')
                  ? InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: AppColors.whiteColor,
                      ),
                    )
                  : SizedBox(),
        ),
      ),
    );
  }
}
