// ignore_for_file: file_names, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/style/appTextStyles.dart';
import 'package:shopini_pos/widgets/termsAndConditions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'style/appColors.dart';
import 'widgets/mediumButton.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  _TermsAndConditionsScreenState createState() =>
      _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.008,
              ),
              Container(
                height: height * 0.05,
                width: width,
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.015,
                      ),
                      Text(
                        'Terms_Conditions',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontFamily: 'Poppins',
                          fontSize: height * 0.024,
                        ),
                      ).tr(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Expanded(
                  child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: AppColors.mainHeadingColor.withOpacity(0.3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.symmetric(
                        vertical: height * 0.01, horizontal: width * 0.045),
                    child: SingleChildScrollView(
                      child: termAndConditionsContent(width, height),
                    ),
                  ),
                ),
              )),
              SizedBox(
                height: height * 0.015,
              ),
              Container(
                  width: width,
                  margin: EdgeInsets.symmetric(
                      horizontal: width * 0.035, vertical: height * 0.015),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MediumButton(
                        height: height,
                        width: width,
                        onTap: () {},
                        text: tr('Accept'),
                        color: AppColors.blueColor,
                        textStyle: AppTextStyles.enText1,
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      MediumButton(
                        height: height,
                        width: width,
                        onTap: () {},
                        text: tr('Decline'),
                        color: AppColors.mainHeadingColor.withOpacity(0.3),
                        textStyle: AppTextStyles.enText1,
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
