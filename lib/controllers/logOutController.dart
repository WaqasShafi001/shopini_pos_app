// ignore_for_file: file_names, empty_catches, prefer_const_constructors

import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shopini_pos/SplashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogOutController extends GetxController {
  Future getLogOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    var token = prefs.getString('token');
    log('token issss==== $token');

    try {
      Map<String, String> headers = {
        'Content_Type': 'application/x-www-form-urlencoded',
        'Authorization': 'Bearer $token'
      };

      var response = await http.post(
        Uri.parse('http://shopiniPOSD.shopinitools.com/api/logout'),
        headers: headers,
      );

      var data = jsonDecode(response.body);
      log('check response is $data');

      if (response.statusCode == 200) {
        Get.snackbar('success', data["message"]);

        Future.delayed(Duration(seconds: 1)).then((value) {
          Get.offAll(SplashScreen());
        });
      }
    } catch (e) {
      log("error is here ${e.toString()}");
      Get.snackbar('Error', e.toString());
    }
  }
}
