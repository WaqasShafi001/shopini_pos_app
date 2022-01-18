// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/main.dart';
import 'package:shopini_pos/style/appColors.dart';
import 'package:shopini_pos/style/appTextStyles.dart';
import 'package:shopini_pos/widgets/smallButton.dart';
import 'package:easy_localization/easy_localization.dart';
import 'flow/login/loginScreen.dart';
import 'localization/sharedPefClass.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SharedPreferenceClass sharedPreferenceClass = SharedPreferenceClass();
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/splash_bg.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/splash_store_image.png',
                fit: BoxFit.fill, width: width * 0.8),
            SizedBox(height: height * 0.01),
            Image.asset(
              'assets/shopini icon.png',
              fit: BoxFit.fill,
              width: width * 0.65,
            ),
            SizedBox(height: height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmallButton(
                  height: height,
                  width: width,
                  text: 'English',
                  color: AppColors.blueColor,
                  textStyle: AppTextStyles.enText1,
                  onTap: () {
                    findLanguageController.isEnglishLocale.value = true;
                    context.setLocale(engLocale);
                    sharedPreferenceClass.addLocale(en: 'en', dd: 'US');
                    Get.updateLocale(engLocale);
                    log('current Locale is === $engLocale');
                    print(
                        'value is ===  ${findLanguageController.isEnglishLocale.value}');
                    Get.to(LoginScreen());
                  },
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                SmallButton(
                  height: height,
                  width: width,
                  text: 'عربي',
                  color: AppColors.darkBlueColor,
                  textStyle: AppTextStyles.arText2,
                  onTap: () {
                    findLanguageController.isEnglishLocale.value = false;
                    context.setLocale(arabLocale);
                    sharedPreferenceClass.addLocale(en: 'de', dd: 'DE');
                    Get.updateLocale(arabLocale);
                    log('current Locale is === $arabLocale');
                    print(
                        'value is ===  ${findLanguageController.isEnglishLocale.value}');
                    Get.to(LoginScreen());
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
