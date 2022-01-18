// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'SplashScreen.dart';
import 'controllers/languageController.dart';

var engLocale = Locale('en', 'US');
var arabLocale = Locale('ar', 'IQ');

var findLanguageController = Get.find<LanguageController>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Colors.black,
    systemNavigationBarIconBrightness: Brightness.light,
    systemNavigationBarDividerColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  SharedPreferences preferences = await SharedPreferences.getInstance();
  var putLanguageController = Get.put(LanguageController());

  var firstTimeLocale = preferences.getString('en');

  if (firstTimeLocale != null) {
    String? en = preferences.getString('en');
    String? dd = preferences.getString('dd');

    if (en == 'en' && dd == 'US') {
      putLanguageController.isEnglishLocale.value = true;
      log('is working engLocale? = = = ${putLanguageController.isEnglishLocale.value}');
    } else {
      putLanguageController.isEnglishLocale.value = false;
      log('is working arabLocale? = = = ${putLanguageController.isEnglishLocale.value}');
    }
    runApp(
      EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('ar', 'IQ')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en', 'US'),
        child: MyApp(
          en: en,
          dd: dd,
        ),
      ),
    );
  } else {
    runApp(
      EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('ar', 'IQ')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en', 'US'),
        child: MyApp(),
      ),
    );
  }
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  final String? en;
  final String? dd;
  const MyApp({Key? key, this.en = 'en', this.dd = 'US'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shopini POS',
      debugShowCheckedModeBanner: false,
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('ar', 'IQ'),
      ],
      localizationsDelegates: context.localizationDelegates,
      // locale: context.locale,
      locale: Locale(en!, dd),
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
