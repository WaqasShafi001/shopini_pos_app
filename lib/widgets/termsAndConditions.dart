// ignore_for_file: avoid_unnecessary_containers, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:easy_localization/easy_localization.dart';

Widget termAndConditionsContent(
  double? height,
  double? width,
) {
  return Container(
    child: Column(
      children: [
        SizedBox(
          height: height! * 0.025,
        ),
        Container(
          width: width,
          child: Text(
            "Introduction",
            style: TextStyle(
              fontSize: height * 0.048,
              fontWeight: FontWeight.w600,
              color: AppColors.mainHeadingColor,
            ),
          ).tr(),
        ),
        SizedBox(
          height: height * 0.025,
        ),
        Container(
          width: width,
          child: Text(
            "intro_paragraph",
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: height * 0.038,
            ),
          ).tr(),
        ),
        SizedBox(
          height: height * 0.04,
        ),
        Divider(
          height: height * 0.02,
          color: AppColors.mainHeadingColor,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          width: width,
          child: Text(
            "Intellectual_Property_Rights",
            style: TextStyle(
                fontSize: height * 0.048,
                fontWeight: FontWeight.w600,
                color: AppColors.mainHeadingColor),
          ).tr(),
        ),
        SizedBox(
          height: height * 0.025,
        ),
        Container(
          width: width,
          child: Text(
            "intellectual_property_rights_paragraph",
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: height * 0.038,
            ),
          ).tr(),
        ),
        SizedBox(
          height: height * 0.04,
        ),
        Divider(
          height: height * 0.02,
          color: AppColors.mainHeadingColor,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          width: width,
          child: Text(
            "Your_Content",
            style: TextStyle(
                fontSize: height * 0.048,
                fontWeight: FontWeight.w600,
                color: AppColors.mainHeadingColor),
          ).tr(),
        ),
        SizedBox(
          height: height * 0.025,
        ),
        Container(
          width: width,
          child: Text(
            "your_content_paragraph",
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: height * 0.038,
            ),
          ).tr(),
        ),
        SizedBox(
          height: height * 0.04,
        ),
        Divider(
          height: height * 0.02,
          color: AppColors.mainHeadingColor,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          width: width,
          child: Text(
            "No_warranties",
            style: TextStyle(
                fontSize: height * 0.048,
                fontWeight: FontWeight.w600,
                color: AppColors.mainHeadingColor),
          ).tr(),
        ),
        SizedBox(
          height: height * 0.025,
        ),
        Container(
          width: width,
          child: Text(
            "no_warrenties_paragraph",
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: height * 0.038,
            ),
          ).tr(),
        ),
        SizedBox(
          height: height * 0.04,
        ),
        Divider(
          height: height * 0.02,
          color: AppColors.mainHeadingColor,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Container(
          width: width,
          child: Text(
            "Limitation_of_liability",
            style: TextStyle(
                fontSize: height * 0.048,
                fontWeight: FontWeight.w600,
                color: AppColors.mainHeadingColor),
          ).tr(),
        ),
        SizedBox(
          height: height * 0.025,
        ),
        Container(
          width: width,
          child: Text(
            "limitation_paragraph",
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: height * 0.038,
            ),
          ).tr(),
        ),
      ],
    ),
  );
}
