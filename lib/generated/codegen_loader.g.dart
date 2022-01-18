// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar_IQ = {
  "home": "الصفحة الرئيسية",
  "category": "الفئة",
  "call_us": "اتصل بنا",
  "kabsa": "كبسة",
  "arabic_dish": "طبق عربي",
  "arabic_appetizers": "مقبلات عربية",
  "arabian_fish": "أسماك عربية",
  "ingredients": "مكونات",
  "nutritional_information": "معلومات غذائية"
};
static const Map<String,dynamic> en_US = {
  "home": "Home",
  "category": "Category",
  "call_us": "Call Us",
  "kabsa": "Kabsa",
  "arabic_dish": "Arabic Dish",
  "arabic_appetizers": "Arabic appetizers",
  "arabian_fish": "Arabian fish",
  "ingredients": "Ingredients",
  "nutritional_information": "Nutrient Information"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar_IQ": ar_IQ, "en_US": en_US};
}
