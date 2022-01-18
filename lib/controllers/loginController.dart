// ignore_for_file: file_names, empty_catches, prefer_const_constructors, unnecessary_string_interpolations


import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shopini_pos/flow/bottomNavBar/bottomNavBar.dart';
import 'package:shopini_pos/flow/login/loginPostModel.dart';
import 'package:shopini_pos/flow/login/loginResponceModel.dart';
import 'package:shopini_pos/widgets/customSnackBar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var isLoading = false.obs;

  Future getLogin() async {
    isLoading.value = true;

    LoginPostModel postModel = LoginPostModel(
      email: emailController.text,
      password: passwordController.text,
    );

    try {
      Map<String, String> headers = {
        'Content_Type': 'application/x-www-form-urlencoded'
      };

      var response = await http.post(
        Uri.parse('http://shopiniPOSD.shopinitools.com/api/login'),
        headers: headers,
        //encoding: convert.Encoding.getByName("utf-8"),
        body: postModel.toJson(),
      );

      var data = json.decode(response.body);

      log('check response is $data');

      LoginResponseModel responseModel =
          LoginResponseModel.fromJson(data['message'][1]);

      if (response.statusCode == 200) {
        isLoading.value = false;
        log('this is status code ${response.statusCode}');

        log('this is token ${responseModel.token}');
        log('this is user id ${responseModel.user!.id}');

        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('token', '${responseModel.token}');
        prefs.setString('userId', '${responseModel.user!.id}');

        Get.to(BottomNavBar());
      }
    } catch (e) {
      isLoading.value = false;
      log("error is here ${e.toString()}");
      customSnackbar(title: tr('error'), messageText: tr('invalid_account'));
    }
  }
}
