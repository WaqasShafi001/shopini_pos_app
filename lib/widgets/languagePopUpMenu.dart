// ignore_for_file: file_names

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopini_pos/localization/sharedPefClass.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shopini_pos/style/appColors.dart';
import '../main.dart';

Widget myPopMenu({double? height, double? width}) {
  SharedPreferenceClass prefes = SharedPreferenceClass();
  return PopupMenuButton(
    icon: Icon(
      Icons.language,
      color: AppColors.whiteColor.withOpacity(0.9),
    ),
    onSelected: (value) {
      print('this is clicked');
    },
    itemBuilder: (context) => [
      PopupMenuItem(
        height: height! * 0.06,
        value: 1,
        onTap: () {
          print('english');
          findLanguageController.isEnglishLocale.value = true;
          context.setLocale(engLocale);
          prefes.addLocale(en: 'en', dd: 'US');
          Get.updateLocale(engLocale);
          log('current Locale is === $engLocale');
          print(
              'value is ===  ${findLanguageController.isEnglishLocale.value}');
        },
        child: Obx(
          () => Text(
            'English',
            style: TextStyle(
              fontWeight: findLanguageController.isEnglishLocale.value
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
        ),
      ),
      PopupMenuItem(
        height: height * 0.06,
        value: 2,
        onTap: () {
          print('arabic');
          findLanguageController.isEnglishLocale.value = false;
          context.setLocale(arabLocale);
          prefes.addLocale(en: 'ar', dd: 'IQ');
          Get.updateLocale(arabLocale);
          log('current Locale is === $arabLocale');
          print(
              'value is ===  ${findLanguageController.isEnglishLocale.value}');
        },
        child: Obx(
          () => Text(
            'عربي',
            style: TextStyle(
              fontWeight: !findLanguageController.isEnglishLocale.value
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
        ),
      ),
    ],
  );
}
